#
# Cookbook:: apache
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

# install the httpd package
package 'apache2' do
	package_name 'httpd'
	action :install
end


# enable service on boot and start service now
service 'apache2' do
	service_name 'httpd'
	action [:enable, :start]
end
