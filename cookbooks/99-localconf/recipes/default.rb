package 'mercurial'
package 'vim'
package 'byobu'

npm_package 'formidable'
npm_package 'fs'

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

