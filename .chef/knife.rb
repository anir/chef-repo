# See https://docs.getchef.com/config_rb_knife.html for more information on knife configuration options

current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "anirban"
client_key               "#{current_dir}/anirban.pem"
chef_server_url          "https://anirban3.mylabserver.com/organizations/devopsinc"
cookbook_path            ["#{current_dir}/../cookbooks"]
