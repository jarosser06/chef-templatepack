#
# Cookbook Name:: |{ cookbook['name'] }|
# Recipe :: _omnibus
#
# Copyright |{ cookbook['year'] }|, Rackspace
#

node.default['omnibus_updater']['version'] = '12.2.1'

include_recipe 'omnibus_updater'
