class run::consul::retry_join {
  file { '/etc/consul/consul.d/retry_join.json':
    ensure => present,
    content => template('run/retry_join.json.erb'),
    mode => 644
  }
}
