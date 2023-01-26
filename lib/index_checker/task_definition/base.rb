module IndexChecker
  module TaskDefinition
    class Base
      def write_results_to_file
        template = File.read(result_template_path)
        html_result = ERB.new(template).result(binding)
    
        File.open(result_file_path, 'w+') do |f|
          f.write html_result
        end
      end

      def open_file_in_browser(path)
        Launchy::Browser.run(path)
      end
    
      def result_template_path
        "#{gem_root_path}/lib/report_template.html.erb"
      end

      def result_file_path
        "#{gem_root_path}/indexes.html"
      end

      def gem_root_path
        Dir.pwd
      end
    end
  end
end
