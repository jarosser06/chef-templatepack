#
# Cookbook Name:: |{ cookbook['name'] }|
# Recipe :: |{ options['name'] }|
#
# Copyright |{ cookbook['year'] }|, Rackspace
#

include_recipe 'sudo'

group 'rack' do
  action :create
end

user 'rack' do
  gid 'rack'
  home '/home/rack'
  shell '/bin/bash'
  action :create
end

directory '/home/rack' do
  action :create
  mode 0755
  owner 'rack'
  group 'rack'
end

directory '/home/rack/.ssh' do
  action :create
  mode 0700
  owner 'rack'
  group 'rack'
end

remote_file '/home/rack/.ssh/authorized_keys' do
  source 'https://raw.github.com/rackops/authorized_keys/master/authorized_keys'
  owner 'rack'
  group 'rack'
  mode 0644
  use_conditional_get true
  use_etag true
  use_last_modified false
end
