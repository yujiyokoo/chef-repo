template '/etc/apt/sources.list' do
  source 'sources.list.erb'
  mode 0644
  owner 'root'
  group 'root'
  variables({
    :mirror_url => 'http://mirror.internode.on.net/pub/ubuntu/ubuntu'
  })
end

execute 'apt-get update' do
  command 'apt-get update'
  action :run
end
