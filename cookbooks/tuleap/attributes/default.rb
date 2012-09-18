default['tuleap']['php_base']       = 'php'
default['tuleap']['install_dir']    = '/usr/share/codendi'
default['tuleap']['yum_repo']       = 'stable'
default['tuleap']['packaging_user'] = 'tuleap-dev'
default['tuleap']['manifest_dir']   = '/mnt/tuleap/manifest'

default['tuleap']['createrepos'] = %w(
  /home/vagrant/repos/centos/5/i386
  /home/vagrant/repos/centos/5/i386-php53
  /home/vagrant/repos/centos/5/SRPMS
  /home/vagrant/repos/centos/5/x86_64
  /home/vagrant/repos/centos/5/x86_64-php53
)

default['tuleap']['build_platforms'] = 'all'

# default['tuleap']['repositories']['local']['tuleap']    = '/mnt/tuleap/tuleap'
# default['tuleap']['repositories']['local']['manifest']  = '/mnt/tuleap/manifest'
# 
# default['tuleap']['production']['dependencies'] = %w(
#   cvs-tuleap
#   cvsgraph
#   elasticsearch
#   geshi
#   gitolite
#   highlight
#   htmlpurifier
#   jpgraph-tuleap
#   libnss-mysql
#   mailman-tuleap
#   manifest
#   openfire-tuleap-plugins
#   php
#   php-common
#   php-pear
#   php-pear-Auth-SASL
#   php-pear-HTTP
#   php-pear-HTTP-Download
#   php-pear-HTTP-Header
#   php-pear-Mail
#   php-pear-Mail-Mbox
#   php-pear-Mail-Mime
#   php-pear-Mail-mimeDecode
#   php-pear-Net-SMTP
#   php-pear-Net-Socket
#   php-pecl-apc
#   php-pecl-json
#   php-pecl-oci8
#   php-pecl-xdebug
#   php-Smarty
#   php-zendframework
#   sabredav
#   tuleap
#   tuleap-all
#   viewvc-tuleap
# )
# 
# default['tuleap']['development']['base_dir'] = '/mnt/tuleap'
# default['tuleap']['development']['user'] = 'tuleap-dev'
# default['tuleap']['development']['dependencies'] = %w()
# 
# default['tuleap']['packaging']['base_dir'] = '~/rpmbuild'
# default['tuleap']['packaging']['user'] = 'build'
# default['tuleap']['packaging']['dependencies'] = %w(
#   byacc
#   createrepo
#   enscript
#   flex
#   freetype-devel
#   gcc-c++
#   gd-devel
#   httpd-devel
#   java-1.6.0-openjdk
#   krb5-devel
#   libjpeg-devel
#   libpng-devel
#   libtool
#   make
#   mock
#   mysql-devel
#   MySQL-python
#   pam-devel
#   pcre-devel
#   #{php_base}
#   #{php_base}-devel
#   #{php_base}-gd
#   #{php_base}-mbstring
#   #{php_base}-mysql
#   #{php_base}-process
#   #{php_base}-soap
#   #{php_base}-xml
#   python-devel
#   rcs
#   rpm-build
# )
