#
# Cookbook:: apache
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

# installing the apache server

if node['platform_family'] == 'rhel'
	package = 'httpd'
elsif node['platform_family'] == 'debian'
	package = 'apache2'
end 

package 'apache2' do
	package_name package
	action :install
end

# starting the apache service
service 'apache2' do
	service_name package
	action [:start, :enable]
end

#include_recipe 'apache::websites'
