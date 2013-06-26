# Web Application Vulnerability Scanner Evalutation Project
## Description
Installs WAVSEP over tomcat on Ubuntu 12.04.

## Cookbooks
* tomcat

## Requirements
### Platform
* Debian (Untested)
* Ubuntu (Tested on 12.04)

## Attributes
* `node[:wavsep][:dir]` Where to install WAVSEP, defaults to /var/lib/tomcat7/webapps/
* `node[:wavsep][:url]` From where to install WAVSEP, defaults to 
* `node[:wavsep][:version]` What version of WAVSEP to install, defaults to 1.2
* `node[:wavsep][:war_name]` The name of the archive to install from, wavsep.war
* `node[:wavsep][:zip_name]` The name of the archive to install from, wavsep-v1.2-war-linux.zip

## Usage
### wavsep::default
Includes the `wavsep::server` recipe.

### wavsep::server
Installs WAVSEP using Tomcat as a web server.

## License and Author
### Authors
* Erran Carey (erran_carey@rapid7.com)
