# DOH-Zeek
The indicators of DOH traffic based on the lists from https://github.com/bambenek/block-doh and couple other sources are listed in the Zeek format in the above file - doh-IPs-Dom.intel 

Load the doh-IPs-Dom.intel in your zeek cluster with intel framework enabled, and it should start logging the DOH traffic to well known public DOH servers in the intel.log file.

Use: 
Copy the doh-IPs-Dom.intel in your zeek install path (in this case it's: /usr/local/bro/)
Copy the intel-input-read.bro to your site folder and load it in local.bro using:

@load site/intel-input-read.bro
