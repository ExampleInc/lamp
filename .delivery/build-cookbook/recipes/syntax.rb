#
# Cookbook Name:: build-cookbook
# Recipe:: syntax
#
# Copyright (c) 2016 The Authors, All Rights Reserved.
include_recipe 'delivery-truck::syntax'

cb = run_context.cookbook_collection['cookbook_name']

execute 'index.php' do
  command 'php -l ' + cb.manifest['files'] + '/default/index.php'
  action :run
end

execute 'customer.php' do
  command 'php -l ' + cb.manifest['files'] + '/default/customer.php'
  action :run
end

