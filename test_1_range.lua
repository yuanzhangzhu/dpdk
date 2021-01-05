package.path = package.path ..";?.lua;test/?.lua;app/?.lua;"

require "Pktgen"
--pktgen.page("range");

-- Set up first port
pktgen.set_mac("0","b8:59:9f:0d:8f:4a");

pktgen.range.dst_ip("0", "start", "192.168.0.1");
pktgen.range.dst_ip("0", "inc", "0.0.0.1");
pktgen.range.dst_ip("0", "min", "192.168.0.1");
pktgen.range.dst_ip("0", "max", "192.168.0.128");

pktgen.set_ipaddr("0", "src", "192.168.0.1/24");
pktgen.set("0", "dport", 3000);
pktgen.set("0", "sport", 2000);

-- Set up all port
pktgen.set("all", "size", 64);
pktgen.set_proto("all", "udp");
pktgen.set_range("all", "on");