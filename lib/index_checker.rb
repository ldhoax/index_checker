# frozen_string_literal: true

require 'pg'
require 'erb'
require 'launchy'

module IndexChecker
  class << self
    attr_accessor :rdbms, :dbname, :user, :password

    def config
      yield self
    end
  end
end

require_relative 'index_checker/railtie' if defined?(Rails)
