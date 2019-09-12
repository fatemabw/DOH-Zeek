# DOH-Zeek
The indicators of DOH traffic based on the lists from https://github.com/bambenek/block-doh and couple other sources are listed in the Zeek format.
Load the don-IPs-Dom.intel in your zeek cluster with intel framework enabled, and it should start logging the DOH traffic to well known public DOH servers in the intel.log file.
