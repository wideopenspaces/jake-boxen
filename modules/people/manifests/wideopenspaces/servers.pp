class people::wideopenspaces::servers {
  # MySQL
  include mysql
  mysql::db { 'mydb': }

  # Redis
  include redis


  # Vagrant
  include vagrant
  # class { 'vagrant':
  #   completion: true,
  # }

  include virtualbox
}
