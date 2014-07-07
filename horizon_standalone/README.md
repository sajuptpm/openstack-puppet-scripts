
1)
Install Latest Puppet

# wget https://apt.puppetlabs.com/puppetlabs-release-trusty.deb
# sudo dpkg -i puppetlabs-release-trusty.deb
# sudo sh -c 'echo "deb http://apt.puppetlabs.com// trusty main" >> /etc/apt/sources.list.d/puppet.list'

# sudo apt-get update

# sudo apt-get install puppet

# puppet --version

# dpkg -L puppet

2)
Create following directories
# sudo mkdir /var/puppet
# sudo mkdir /var/puppet/modules

3)
a)
* Install stable "puppet-horizon"
https://github.com/stackforge/puppet-horizon/blob/master/README.md

* Run "puppet man module" to get help

# sudo puppet module install --target-dir /var/puppet/modules puppetlabs/horizon

b)
* Install unstable "puppet-horizon"
https://github.com/stackforge/puppet-openstack#installing-latest-unstable-openstack-module-from-source

# cd /var/puppet/modules
# git clone https://github.com/stackforge/puppet-horizon.git horizon
# cd horizon
# gem install librarian-puppet
# librarian-puppet install --path ../

4)
Create a directory to put your custom puppet files
# mkdir ~/puppet-test
# mkdir ~/puppet-test/manifests
# cd  ~/puppet-test/manifests

5)
Create a "horizon_standalone.pp" to put your puppet code
# cd  ~/puppet-test/manifests/horizon_standalone/
# vim horizon_standalone.pp

class { '::horizon':
    secret_key => "enter-some-secret-key",
    keystone_url => "http://192.168.56.1:5000/v2.0",
    package_ensure => "latest",
  }


https://github.com/stackforge/puppet-horizon/blob/master/manifests/init.pp

6)
a)
* Check "README.md" of "puppet-horizon" module
https://github.com/stackforge/puppet-horizon/blob/master/README.md

b)
* Check the "init.pp" of "puppet-horizon" module and understand the definition of class "horizon" and what are the arguments we can pass and what are the default arguments.
https://github.com/stackforge/puppet-horizon/blob/master/manifests/init.pp

8)
Run puppet and install Horizon
# sudo puppet apply  --verbose --modulepath /var/puppet/modules horizon_standalone/horizon_standalone.pp

You can also use --debug and --noop options

9)
Access Horizon Dashboard
http://hostname_of_machine_where_you_installed_horizon

10)
Added following line in "/etc/hosts" if you want to access from different machine
#vim /etc/hosts
ip_of_machine_where_you_installed_horizon hostname_of_machine_where_you_installed_horizon

11)
Note: Read following README.md
https://github.com/puppetlabs/puppetlabs-havana/blob/master/README.md
https://github.com/stackforge/puppet-openstack/blob/master/README.md

12)
OpenStackPuppetHowto
https://wiki.debian.org/OpenStackPuppetHowto




