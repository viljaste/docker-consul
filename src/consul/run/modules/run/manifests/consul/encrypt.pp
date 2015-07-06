class run::consul::encrypt {
  file { '/etc/consul/consul.d/encrypt.json':
    ensure => present,
    content => template('run/encrypt.json.erb'),
    mode => 644
  }
}
