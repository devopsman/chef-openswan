### IMPORTANT - make sure there is a newline in the end of vpc-to-vpc.conf file. Otherwise ipsec fails to start with Segmentation fault
template "/etc/ipsec.d/vpc-to-vpc.conf" do
  source "vpc-to-vpc.erb"
  mode '0440'
  owner 'root'
  group 'root'
end

### IMPORTANT - make sure there is a newline in the end of vpc-to-vpc.secrets file. Otherwise ipsec tunnel will not start correctly
template "/etc/ipsec.d/vpc-to-vpc.secrets" do
  source "vpc-to-vpc-secrets.erb"
  mode '0440'
  owner 'root'
  group 'root'
end
