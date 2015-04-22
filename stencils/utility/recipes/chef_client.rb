#
# Cookbook Name:: |{ cookbook['name'] }|
# Recipe :: |{ options['name'] }|
#
# Copyright |{ cookbook['year'] }|, Rackspace
#

node.default['chef-client']['log_file'] = '/var/log/chef/client.log'

include_recipe 'chef-client'
include_recipe 'chef-client::config'
include_recipe 'chef-client::delete_validation'
