@load frameworks/intel/seen
@load frameworks/intel/do_notice
@load policy/integration/collective-intel

redef Intel::read_files += {

### Local static additions##
    "/usr/local/bro/doh-IPs-Dom.intel"
};
