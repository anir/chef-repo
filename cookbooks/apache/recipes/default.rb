#
# Cookbook:: apache
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

# install the httpd package
if node['platform_family'] == "rhel"
	package = "httpd"

elsif node['platform_family'] == "debian"
	package = "apache2"
end

package 'apache2' do
	package_name package
	action :install
end


# enable service on boot and start service now
service 'apache2' do
	service_name 'httpd'
	action [:enable, :start]
end

