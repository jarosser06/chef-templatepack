#
# Cookbook Name:: |{ cookbook['name'] }|
# Recipe :: |{ options['name'] }|
#
# Copyright |{ cookbook['year'] }|, Rackspace
#

%w(
  rbenv::default
  rbenv::ruby_build
).each do |r|
  include_recipe r
end

rbenv_ruby |{ qstring(options['ruby']) }| do
  global true
end

rbenv_gem 'rake' do
  options('--force')
end

directory File.join(|{ qstring(options['root']) }|, '.ssh') do
  owner |{ qstring(options['owner']) }|
  group |{ qstring(options['group']) }|
  mode 0500
  recursive true
  action :create
end
