# DOH-Zeek
The indicators of DOH traffic based on the lists from https://github.com/bambenek/block-doh and couple other sources are listed in the Zeek format in the above file - doh-IPs-Dom.intel 

Load the doh-IPs-Dom.intel in your zeek cluster with intel framework enabled, and it should start logging the DOH traffic to well known public DOH servers in the intel.log file.

Use: 
```
cd <prefix>/share/zeek/site/
git clone git://github.com/fatemabw/DOH-Zeek.git doh
echo "@load doh" >> local.zeek
```
