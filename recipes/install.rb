package "openswan" do
  action :install
end

service "ipsec" do
  supports :status => true, :restart => true, :start => true, :stop => true
end