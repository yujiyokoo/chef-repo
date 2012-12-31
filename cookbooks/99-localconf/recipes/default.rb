package 'mercurial'
package 'vim'

template '/home/vagrant/.vimrc' do
  owner 'vagrant'
  group 'vagrant'
  source 'vimrc.erb'
end

directory '/home/vagrant/src' do
  owner 'vagrant'
  group 'vagrant'
  action :create
end

execute 'hg clane repo' do
  command 'hg clone https://yujiyokoo@bitbucket.org/yujiyokoo/node_fullstack'
  user 'vagrant'
  cwd '/home/vagrant/src'
  action :nothing
end
