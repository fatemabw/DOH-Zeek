@load frameworks/intel/seen
@load frameworks/intel/do_notice
@load policy/integration/collective-intel
@load doh-detect.zeek

redef Intel::read_files += {
  ### Local static additions##
  fmt("%s/doh-IPs-Dom.intel", @DIR)
};
