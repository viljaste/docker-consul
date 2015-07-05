class run::consul {
  if $server == 'On' {
    include run::consul::server
  }

  if $bootstrap_expect {
    include run::consul::bootstrap_expect
  }

  bash_exec { 'mkdir -p /consul/data': }
}
