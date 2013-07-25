name             'wavsep'
maintainer       'Rapid7'
maintainer_email 'erran_carey@rapid7.com'
license          'Copyright (c) 2012-2013, Rapid7. All Rights Reserved.'
description      'Recipes to install WAVSEP and run a web server using Tomcat'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '1.0.5'

# TODO: Suggests over depends after making platform independent?
depends 'apt'
