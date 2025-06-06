#!/bin/bash

ranges=cidrs.txt
log=log_file.txt

for cidr in $(cat $ranges); do

    # Define a file name per CIDR:
    file=$(echo $cidr | sed -e "s/\//_/g").txt

    # Run whois and export the output to a file:
    whois $cidr > $file

    if [ $? = 0 ]; then

        # Get country from file:
        cidr_country=$(grep -iw country $file | head -n1 | awk '{print$2}')

        # Create a directory per country:
        if [ ! -z $cidr_country ]; then

            if [ ! -e $cidr_country ]; then

                mkdir $cidr_country

            fi

        else

            echo "CIDR: $cidr | Country: unknown" >> $log

        fi
    
    echo "CIDR: $cidr | Country: $cidr_country" >> $log
    mv $file $cidr_country
    
    fi; 

    sleep 2 ;
done
