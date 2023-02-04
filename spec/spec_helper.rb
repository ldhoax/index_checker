# frozen_string_literal: true

require 'simplecov'

SimpleCov.start 'rails' do
  add_filter 'spec/'
  add_filter '.github/'
  add_filter 'lib/index_checker/version'
end

Dir["#{File.dirname(__FILE__)}/support/**/*.rb"].sort.each { |f| require f }

ENV['RAILS_ENV'] = 'test'

require_relative './rails_sample/config/environment'
ENV['RAILS_ROOT'] ||= "#{File.dirname(__FILE__)}../../../spec/rails_sample"

RSpec.configure do |config|
  config.include FileManager
end

include FileManager
add_config

Rails.application.load_tasks
