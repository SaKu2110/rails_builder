execute 'update yum' do
  command 'yum update -y'
  user 'root'
end
