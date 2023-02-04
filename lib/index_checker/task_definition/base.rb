# frozen_string_literal: true

module IndexChecker
  module TaskDefinition
    class Base
      class << self
        def postgres_connection
          dbname = IndexChecker.dbname
          user = IndexChecker.user
          password = IndexChecker.password

          puts "You are connecting to #{dbname} database as #{user} role"
          begin
            PG.connect(dbname: dbname, user: user, password: password)
          rescue Exception => e
            puts e
          end
        end

        def write_results_to_file
          template = File.read(result_template_path)
          html_result = ERB.new(template).result(binding)

          File.write(result_file_path, html_result)
        end

        def open_file_in_browser(path)
          Launchy.open(path)
        end

        def result_template_path
          "#{gem_root_path}lib/report_template.html.erb"
        end

        def result_file_path
          "#{Rails.root}/index_checker/general_report.html"
        end

        def gem_root_path
          __FILE__.gsub('lib/index_checker/task_definition/base.rb', '')
        end
      end
    end
  end
end
