class run::consul::bootstrap_expect {
  file { '/etc/consul/consul.d/bootstrap_expect.json':
    ensure => present,
    content => template('run/bootstrap_expect.json.erb'),
    mode => 644
  }
}
