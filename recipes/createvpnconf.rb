template "/etc/ipsec.d/vpc-to-vpc.conf" do
  source "vpc-to-vpc.erb"
  mode '0440'
  owner 'root'
  group 'root'
end
