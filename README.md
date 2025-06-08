# Geoip Blocklists 

This project provides lists of IP ranges organized by country. The purpose is to allow system administrators, network administrators, cybersecurity professionals, software developers, and others to block traffic originating from specific countries.

This is especially useful for reducing illegitimate requests such as brute force attacks, RFI, RFE, and similar threats.

Currently, only IPv4 lists are available.

# cidr directory:

The cidr directory contains the IP address lists organized by country. The file names follow the [ISO=3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2#Officially_assigned_code_elements) country code standard.

# whois directory:

The whois directory contains lists with the results of whois lookups performed for each IP range. These lists are also organized by country code.

This information may be useful for future research, avoiding the need to repeat whois queries for multiple IP addresses.

# htaccess directory

This project includes .htaccess files for Apache versions 2.2 and 2.4. The files are organized by country.

# Applying IP Blocking Using .htaccess Files

Download the desired .htaccess and place it in your website’s *$home* directory with the name **.htaccess**.

Typically, the $home directory is public_html, but this may vary depending on your server setup.

# Applying the Block Directly in the Apache Virtual Host

You can use the *.htaccess* files provided in this project directly within your site’s VirtualHost. To do this, include the following lines in your VirtualHost:

<pre><code><Directory /home/mywebsitedir>
    Require all granted
    Include /etc/apache2/ip-blocks/at.conf
    Include /etc/apache2/ip-blocks/nl.conf
</Directory></code></pre>

Note that in this example, you need to create the directory **/etc/apache2/ip-blocks/**, apply the appropriate permissions (typically 640), and place the files **at.conf** and **nl.conf** inside it. These files correspond to the **.htaccess_anti_at_austria** and **.htaccess_anti_nl_netherlands** files available in the htaccess directory.

With this setup, the CIDRs will be blocked as soon as Apache is restarted
