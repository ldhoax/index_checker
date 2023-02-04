# frozen_string_literal: true

require 'index_checker'

IndexChecker.config do |c|

  # dbname  : required
  # Database name is required
  c.dbname = 'database-to-analysis'


  # user    : optional.
  # If the `user` is not provided, it will be the default user (same name as your OS name)
  # c.user = 'your-postgres-username'


  # password: optional
  # The password just requires if your (Postgres) user authenticates by `md5` method, that is optional for other authentication methods: `trust` or `peer`. Your postgres config in pg_hba.config
  # c.password = 'your-password' 


  # rdbms   : default  
  # This configuration is default. IndexChecker just support PostgresSQL for now!

  # c.rdbms = 'postgresql'

end
