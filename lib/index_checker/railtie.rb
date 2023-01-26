module IndexChecker
  class Railtie < Rails::Railtie
    rake_tasks do
      load 'tasks/index_checker_tasks.rake'
    end
  end
end
