#
# Cookbook Name:: build-cookbook
# Recipe:: syntax
#
# Copyright (c) 2016 The Authors, All Rights Reserved.
include_recipe 'delivery-truck::syntax'

ruby_block 'default' do
  block do
    puts "Current directory: " + run_context.cookbook_collection[cookbook_name].root_dir
  end
end

execute 'index.php' do
  command 'php -l ../../../files/default/index.php'
  action :run
end

execute 'customer.php' do
  command 'php -l ../../../files/default/customer.php'
  action :run
end

