# frozen_string_literal: true

require 'rails/generators'

module IndexChecker
  module Generators
    class InitializeGenerator < Rails::Generators::Base
      source_root File.expand_path('../templates', __dir__)

      desc 'Creates a IndexChecker config file'
      def copy_config
        file_path = "#{Rails.root}/config/index_checker.rb"
        return if File.file?(file_path)

        template 'index_checker_config.rb', file_path
      end

      desc 'Create a IndexChecker folder'
      def create_initializer_file
        file_path = "#{Rails.root}/index_checker/general_report.html"
        return if File.file?(file_path)

        create_file file_path,
                    'Result of rake index_checker::analysis will be shown here ...'
      end
    end
  end
end
