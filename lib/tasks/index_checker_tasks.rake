# frozen_string_literal: true

require 'rake'
require_relative '../index_checker/task_definition/base'
require_relative '../index_checker/task_definition/general_report'
require "#{Rails.root}/config/index_checker"

namespace :index_checker do
  task :analysis do
    IndexChecker::TaskDefinition::GeneralReport.generate!
  end
end
