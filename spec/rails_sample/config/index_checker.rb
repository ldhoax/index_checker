require 'index_checker'
IndexChecker.config do |c|
  c.rdbms = 'postgres'
  c.dbname = 'your_database_name'
  c.user = 'your_postgres_username'
  c.password = 'your_postgres_user_password'
end
