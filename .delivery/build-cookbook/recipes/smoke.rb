#
# Cookbook Name:: build-cookbook
# Recipe:: smoke
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

#@http_request 'Test connectivity' do
#  url 'http://localhost/index.php'
#  action :get
#end

include_recipe 'delivery-truck::smoke'
