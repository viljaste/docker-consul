class run::consul::server {
  file { '/etc/consul/consul.d/server.json':
    ensure => present,
    content => template('run/server.json.erb'),
    mode => 644
  }
}
