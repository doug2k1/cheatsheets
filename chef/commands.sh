# Local mode
$ chef-client --local-mode hello.rb


# Cookbooks

## generate cookbook
chef generate cookbook learn_chef_apache2

## generate template
chef generate template learn_chef_apache2 index.html

## run cookbook
sudo chef-client --local-mode --runlist 'recipe[learn_chef_apache2]'


# Hosted Chef Server

## verify connection
knife ssl check

## download cookbook from chef supermarket
knife cookbook site download learn_chef_apache2
tar -zxvf learn_chef_apache2-0.3.0.tar.gz -C cookbooks

## upload cookbook to server
knife cookbook upload learn_chef_apache2

## list cookbooks in server
knife cookbook list

## connect to local vagrant vm
ssh -i /Users/doug2k1/projects/cheatsheets/chef/.vagrant/machines/default/virtualbox/private_key -l vagrant -p 2200 localhost

## bootstrap local machine
knife bootstrap localhost --ssh-port 2200 --ssh-user vagrant --sudo --identity-file /Users/doug2k1/projects/cheatsheets/chef/.vagrant/machines/default/virtualbox/private_key --node-name node1 --run-list 'recipe[learn_chef_apache2]'
