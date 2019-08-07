# Env Var #
motd = '/etc/motd'
bashrc = '/home/vagrant/.bashrc'

remote_file "#{motd}" do
  owner 'vagrant'
  group 'vagrant'
  source "files#{motd}"
end

remote_file "#{bashrc}" do
  owner 'vagrant'
  group 'vagrant'
  source "files#{bashrc}"
end
