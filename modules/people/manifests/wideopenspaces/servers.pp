class people::wideopenspaces::servers {
  # MySQL
  include mysql
  mysql::db { 'mydb': }

  # Redis
  include redis
}
