
class { '::horizon':
    secret_key => "enter-some-secret-key",
    keystone_url => "http://192.168.56.1:5000/v2.0",
    package_ensure => "latest",
  }


