home = '/home/vagrant'
gem = "#{home}/.rbenv/shims/gem"

execute 'install rails' do
  command "#{gem} install rails"
  user 'vagrant'
end

execute 'install bundler' do
  command "#{gem} install bundler"
  user 'vagrant'
end
