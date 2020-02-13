module DOH;

export {

        redef enum Notice::Type += {
                ## A connection to the DOH service was encountered
                DOH_connection
        };
}	
# list of DOH hosts.
global doh_ips = set(1.0.0.1,
                       1.1.1.1,
                       8.8.4.4,
                       8.8.8.8,
                       9.9.9.9,
                       104.16.248.249,
                       104.16.249.249,
                       104.236.178.232,
                       104.28.0.106,
                       104.28.1.106,
                       108.61.201.119,
                       116.203.35.255,
                       116.203.70.156,
                       118.89.110.78,
                       136.144.215.158,
                       139.59.48.222,
                       146.185.167.43,
                       149.112.112.10,
                       149.112.112.9,
                       185.228.168.10,
                       185.228.168.168,
                       45.32.105.4,
                       45.32.253.116,
                       45.77.124.64,
                       47.96.179.163);

event connection_established(c: connection) &priority=-5
{
        local src = c$id$orig_h;
        local dst = c$id$resp_h;

        if (c$id$resp_p == 443/tcp && dst in doh_ips )
                NOTICE([$note=DOH_connection, $msg=fmt("A connection to DOH server was encountered from %s",c$id$orig_h)]);

}
