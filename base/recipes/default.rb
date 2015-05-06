#
# Cookbook Name:: |{ cookbook['name'] }|
# Recipe :: default
#
# Copyright |{ cookbook['year'] }|, Rackspace
#

node.default['chef-client']['log_file'] = '/var/log/chef/client.log'

%w(
  chef-sugar-rackspace
  rackspace_support
  chef-client
  chef-client::config
  chef-client::delete_validation
  |{ cookbook['name']::_omnibus }|
).each do |recipe|
  include_recipe recipe
end

## This can be removed if the customer is rackconnected
unless rackconnected?
  firewall_rule 'open_ssh' do
    provider Chef::Provider::FirewallRuleIptables
    port 22
    action :allow
    description 'Open SSH to the world'
    position 2
  end
end
