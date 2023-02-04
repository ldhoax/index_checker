# frozen_string_literal: true

require 'rails/generators'

module IndexChecker
  module Generators
    class InitializeGenerator < Rails::Generators::Base
      source_root File.expand_path('../templates', __dir__)

      desc 'Creates a IndexChecker config file'
      def copy_config
        template 'index_checker_config.rb', "#{Rails.root}/config/index_checker.rb"
      end

      desc 'Create a IndexChecker folder'
      def create_initializer_file
        create_file "#{Rails.root}/index_checker/general_report.html",
                    'Result of rake index_checker::analysis will be shown here ...'
      end
    end
  end
end
