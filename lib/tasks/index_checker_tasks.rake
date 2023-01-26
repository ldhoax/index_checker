require 'rake'

namespace :index_checker do
  task :analysis do
    IndexChecker::TaskDefinition::GeneralReport.new.generate!
  end
end
