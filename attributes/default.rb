#
# Cookbook Name:: wavsep
# Attributes:: default
#
# Copyright (c) 2012-2013, Rapid7
#
# All Rights Reserved - Do Not Redistribute
#

default[:wavsep][:dir] = '/var/lib/tomcat7/webapps/'
default[:wavsep][:version] = '1.2'
default[:wavsep][:url] = "http://wavsep.googlecode.com/files/wavsep-v#{default[:wavsep][:version]}-war-linux.zip"
default[:wavsep][:war_name] = 'wavsep.war'
default[:wavsep][:zip_name] = "wavsep-v#{default[:wavsep][:version]}-war-linux.zip"
