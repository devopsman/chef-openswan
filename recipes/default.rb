include_recipe 'chef-openswan::install'
include_recipe 'chef-openswan::updateipsecconf'
include_recipe 'chef-openswan::createvpnconf'
include_recipe 'chef-openswan::updatesysctl'