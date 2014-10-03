package "lsof" do
  action :install
end

package "openswan" do
  action :install
end

service "ipsec" do
  action [ :enable ]
  supports :status => true, :restart => true, :start => true, :stop => true
end