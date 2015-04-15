#
# Cookbook Name:: |{ cookbook['name'] }|
# Recipe :: |{ options['name'] }|
#
# Copyright |{ cookbook['year'] }|, Rackspace
#

node.default['omnibus_updater']['version'] = '|{ options['version'] }|'

include_recipe 'omnibus_updater'
