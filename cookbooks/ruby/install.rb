# Env Var #
home = '/home/vagrant'
bin = "#{home}/.rbenv/bin/rbenv"
rbenv = 'https://github.com/sstephenson/rbenv.git'
build = 'https://github.com/sstephenson/ruby-build.git'
ver = node["ruby"]

package 'gcc'
package 'gcc-c++'
package 'glibc-headers'
package 'openssl-devel'
package 'libyaml-devel'
package 'readline-devel'
package 'sqlite-devel'

execute 'add nodejs' do
  command 'curl -sL https://rpm.nodesource.com/setup_8.x | bash -'
  user 'root'
end
package 'nodejs'

execute 'install rbenv' do
  command "git clone #{rbenv} #{home}/.rbenv"
  user 'vagrant'
end

directory "#{home}/.rbenv/plugins" do
  mode "775"
  owner "vagrant"
  group "vagrant"
end

execute 'install ruby-build' do
  command "git clone #{build} #{home}/.rbenv/plugins/ruby-build"
  user 'vagrant'
end

execute 'install ruby' do
  command "#{bin} install #{ver}"
  user 'vagrant'
end

execute 'set global version' do
  command "#{bin} global #{ver}"
  user 'vagrant'
end

execute 'rehash rbenv' do
  command "#{bin} rehash"
  user 'vagrant'
end
