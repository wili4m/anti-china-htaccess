# Geoip Blocklists 

This project provides lists of IP ranges organized by country. The purpose is to allow system administrators, network administrators, cybersecurity professionals, software developers, and others to block traffic originating from specific countries.

This is especially useful for reducing illegitimate requests such as brute force attacks, RFI, RFE, and similar threats.

Currently, only IPv4 lists are available.

# cidr directory:

The cidr directory contains the IP address lists organized by country. The file names follow the (ISO=3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2#Officially_assigned_code_elements) country code standard.

# whois directory:

The whois directory contains lists with the results of whois lookups performed for each IP range. These lists are also organized by country code.

This information may be useful for future research, avoiding the need to repeat whois queries for multiple IP addresses.

# htaccess directory

This project includes .htaccess files for Apache versions 2.2 and 2.4. The files are organized by country.