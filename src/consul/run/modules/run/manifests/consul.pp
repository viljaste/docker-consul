class run::consul {
  if $server == 'On' {
    include run::consul::server
  }

  if $bootstrap_expect {
    include run::consul::bootstrap_expect
  }

  if $advertise_addr {
    include run::consul::advertise_addr
  }

  if $retry_join {
    include run::consul::retry_join
  }

  bash_exec { 'mkdir -p /consul/data': }
}
