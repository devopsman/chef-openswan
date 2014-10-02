include_recipe 'chef-openswan::install'

file = Chef::Util::FileEdit.new('/etc/ipsec.conf')
file.search_file_replace_line('^#include /etc/ipsec\.d/\*\.conf$', "include /etc/ipsec.d/*.conf")
file.write_file
