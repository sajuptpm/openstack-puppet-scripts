

####Heat
class { '::heat':
    keystone_host => "192.168.56.103",
    keystone_port => "35357",
    keystone_user => "heat",
    keystone_tenant => "services",
    package_ensure => "latest",
    sql_connection => "sqlite:////var/lib/heat/sqlite_db",
    flavor => "standalone",	
  }

####Heat Engine
#auth_encryption_key should be 32 char long
class { 'heat::engine':
        auth_encryption_key => "12345678912345678912345678912345",
}

####Heat API
class { 'heat::api':
	bind_host => "127.0.0.1",
	bind_port => "8004",
}

####Rabbitmq
class { '::rabbitmq':
}

####Heat cfn
class { 'heat::api_cfn':
        bind_host => "127.0.0.1",
        bind_port => "8000",
}




