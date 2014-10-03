# Update /etc/sysctl.conf to allow route traffic
file = Chef::Util::FileEdit.new('/etc/sysctl.conf')
file.insert_line_if_no_match('^net.ipv4.ip_forward = 1$', "net.ipv4.ip_forward = 1")
file.insert_line_if_no_match('^net.ipv4.conf.all.accept_redirects = 0$', "net.ipv4.conf.all.accept_redirects = 0")
file.insert_line_if_no_match('^net.ipv4.conf.all.send_redirects = 0$', "net.ipv4.conf.all.send_redirects = 0")
file.insert_line_if_no_match('^net.ipv4.conf.default.accept_redirects = 0$', "net.ipv4.conf.default.accept_redirects = 0")
file.insert_line_if_no_match('^net.ipv4.conf.default.send_redirects = 0$', "net.ipv4.conf.default.send_redirects = 0")
file.write_file

execute "" do
    command "sysctl -p"
    command "service network restart"
    command "service ipsec restart"
end
