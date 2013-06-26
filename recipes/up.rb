#
# Cookbook Name:: wavsep
# Recipe:: up
#
# Copyright (c) 2013, Rapid7
#
# All Rights Reserved - Do Not Redistribute
#

include_recipe "wavsep::install"

service "tomcat7" do
  action :start
end
