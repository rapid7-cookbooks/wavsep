#
# Cookbook Name:: wavsep
# Recipe:: server
#
# Copyright (c) 2013, Rapid7
#
# All Rights Reserved - Do Not Redistribute
#

include_recipe "apt"

package "tomcat7"
package "unzip"

# TODO: Check the not_if statements...

remote_file "#{Chef::Config[:file_cache_path]}/#{node[:wavsep][:zip_name]}" do
  action :create_if_missing
  not_if "stat #{node[:wavsep][:dir]}/wavsep"
  source node[:wavsep][:url]
end

bash "install_wavsep" do
  user "root"
  code <<-eos
    unzip -q #{Chef::Config[:file_cache_path]}/#{node[:wavsep][:zip_name]} -d #{node[:wavsep][:dir]}
    rm #{Chef::Config[:file_cache_path]}/#{node[:wavsep][:zip_name]}
  eos
  not_if "stat #{node[:wavsep][:dir]}/wavsep"
end
