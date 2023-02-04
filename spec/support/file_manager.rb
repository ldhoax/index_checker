# frozen_string_literal: true

require 'fileutils'

module FileManager
  def config_file
    "#{Rails.root}/config/index_checker.rb"
  end

  def report_file
    "#{Rails.root}/index_checker/general_report.html"
  end

  def remove_config_file
    FileUtils.remove_file config_file if File.file?(config_file)
  end

  def remove_report_file
    FileUtils.remove_file report_file if File.file?(report_file)
  end

  def add_config
    data = <<~DATA
      require 'index_checker'
      IndexChecker.config do |c|
        c.rdbms = 'postgres'
        c.dbname = 'your_database_name'
        c.user = 'your_postgres_username'
        c.password = 'your_postgres_user_password'
      end
    DATA

    File.open(config_file, 'w+:UTF-8') do |f|
      f.write(data)
    end
  end
end
