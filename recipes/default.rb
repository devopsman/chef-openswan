include_recipe 'chef-openswan::install'
include_recipe 'chef-openswan::updatemainconf'
include_recipe 'chef-openswan::createvpnconf'
include_recipe 'chef-openswan::updatesysctl'