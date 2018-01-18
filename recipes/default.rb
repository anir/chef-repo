#
# Cookbook:: apache
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

# installing the apache server
package 'apache2' do
	package_name 'httpd'
	action :install
end

# starting the apache service
service 'apache2' do
	service_name 'httpd'
	action [:start, :enable]
end
