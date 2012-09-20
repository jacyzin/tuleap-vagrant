#
# Cookbook Name:: tuleap
# Recipe:: build
#
# Copyright 2012, Enalean
#
# All rights reserved - Do Not Redistribute
#

# execute 'make clone' do
#   user node['tuleap']['packaging_user']
#   cwd  node['tuleap']['manifest_dir']
# end


packager      = node['tuleap']['packaging_user']
arch          = `uname -m`.strip
php_base      = node['tuleap']['php_base'] == 'php53' ? '-php53' : ''
platforms     = "centos-5-#{arch}#{php_base}"
repo_path     = "#{node['tuleap']['manifest_dir']}/repos/centos/5/x86_64#{php_base}"
packager_home = (packager == 'root' ? '/root' : "/home/#{packager}")

## XXX:
##   Both the `script` and `execute` resources don't instanciate a login shell
##   to run their commands. This means that, even if `user` is set, both the
##   `HOME` environment variable and the user groups will be inherited from
##   `root`.
##   So we need to set `HOME` in the `environment` attribute, and to add `root`
##   to the `mock` group, even if the actual user will not be `root`.

group 'mock' do
  action :manage
  members ['root']
  append true
end

script 'build tuleap dependencies' do
  user        packager
  cwd         node['tuleap']['manifest_dir']
  interpreter 'bash'
  flags       '-l'
  environment 'HOME' => packager_home
  code        <<-SHELL
                make PLATEFORMS="#{platforms}"
              SHELL
end

script 'build tuleap' do
  user        packager
  cwd         "#{node['tuleap']['source_dir']}/tools/rpm"
  interpreter 'bash'
  flags       '-l'
  environment 'HOME' => packager_home
  code        <<-SHELL
                make PHP_BASE=#{php_base ? 'php53' : 'php'}
                cp #{packager_home}/rpmbuild/RPMS/noarch/* #{repo_path}
                createrepo #{repo_path}
                sudo yum clean all
                sudo yum clean expire-cache
              SHELL
end
