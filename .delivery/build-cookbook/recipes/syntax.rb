#
# Cookbook Name:: build-cookbook
# Recipe:: syntax
#
# Copyright (c) 2016 The Authors, All Rights Reserved.
include_recipe 'delivery-truck::syntax'

execute 'index.php' do
  command 'php -l ../../../files/default/index.php'
  action :nothing
end

execute 'customer.php' do
  command 'php -l ../../../files/default/customer.php'
  action :nothing
end

