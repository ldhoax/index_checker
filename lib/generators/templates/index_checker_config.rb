# frozen_string_literal: true

require 'index_checker'

IndexChecker.config do |c|
  # These are mandatory options that you must set before running rake tasks:
  # c.rdbms = postgresql
  # c.user = your postgresql username
  # c.password = your postgresql user's password
  # c.dbname = your database to connect
end
