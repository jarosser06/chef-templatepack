#
# Cookbook Name:: |{ cookbook['name'] }|
# Recipe :: |{ options['name'] }|
#
# Copyright |{ cookbook['year'] }|, Rackspace
#

node['omnibus_updater']['version'] = '|{ options['version'] }|'

include_recipe 'omnibus_updater'
