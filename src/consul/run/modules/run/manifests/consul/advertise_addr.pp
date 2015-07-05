class run::consul::advertise_addr {
  file { '/etc/consul/consul.d/advertise_addr.json':
    ensure => present,
    content => template('run/advertise_addr.json.erb'),
    mode => 644
  }
}
