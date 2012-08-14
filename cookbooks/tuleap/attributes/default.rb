default['tuleap']['php_base'] = 'php'

default['tuleap']['repositories']['remote']['stable']   = 'gitolite@tuleap.net:tuleap/tuleap/stable.git'
default['tuleap']['repositories']['remote']['dev']      = 'gitolite@tuleap.net:tuleap/tuleap/dev.git'
default['tuleap']['repositories']['remote']['manifest'] = 'gitolite@tuleap.net:tuleap/deps/manifest.git'
default['tuleap']['repositories']['local']['tuleap']    = '/mnt/tuleap/tuleap'
default['tuleap']['repositories']['local']['manifest']  = '/mnt/tuleap/manifest'

default['tuleap']['production']['base_dir'] = '/usr/share/codendi'
default['tuleap']['production']['dependencies'] = %w(
  php-pecl-json
  tuleap-all
)

default['tuleap']['development']['base_dir'] = '/mnt/tuleap'
default['tuleap']['development']['user'] = 'tuleap-dev'
default['tuleap']['development']['dependencies'] = %w()

default['tuleap']['packaging']['base_dir'] = '~/rpmbuild'
default['tuleap']['packaging']['user'] = default['tuleap']['development']['user']
default['tuleap']['packaging']['dependencies'] = %w(
  byacc
  flex
  freetype-devel
  gcc-c++
  gd-devel
  httpd-devel
  java-1.6.0-openjdk
  krb5-devel
  libjpeg-devel
  libpng-devel
  libtool
  make
  mysql-devel
  pam-devel
  pcre-devel
  #{php_base}
  #{php_base}-devel
  #{php_base}-gd
  #{php_base}-mbstring
  #{php_base}-mysql
  #{php_base}-process
  #{php_base}-soap
  #{php_base}-xml
  python-devel
  rcs
  rpm-build
)