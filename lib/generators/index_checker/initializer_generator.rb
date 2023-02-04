# frozen_string_literal: true

require 'rails/generators'

module IndexChecker
  module Generators
    class InitializerGenerator < Rails::Generators::Base
      source_root File.expand_path('../templates', __dir__)

      desc 'Creates a IndexChecker config file'
      def copy_config
        template 'index_checker_config.rb', "#{Rails.root}/config/index_checker.rb"
      end
    end
  end
end
