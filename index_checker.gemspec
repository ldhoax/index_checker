require File.expand_path('lib/index_checker/version', __dir__)

Gem::Specification.new do |s|
  s.name        = 'index_checker'
  s.version     = IndexChecker::VERSION
  s.summary     = 'Index Checker'
  s.description = 'A simple ruby gem for view statistic information abount index'
  s.authors     = ['Lê Đức Hoà']
  s.email       = 'leduchoabatr12@gmail.com'
  s.files       = Dir['lib/report_template.html.erb', 'lib/**/*.rb', 'lib/**/*.rake', 'index_checker.gemspec',
                      'Gemfile', 'Rakefile']
  s.homepage    =
    'https://github.com/dontregret9/index_checker'
  s.license = 'MIT'

  s.add_dependency 'erb', '~> 4.0'
  s.add_dependency 'launchy', '~> 2.5'
  s.add_dependency 'pg', '~> 1.1'

  s.add_development_dependency 'rails', '~> 6.0.3'
  s.add_development_dependency 'rake', '~> 13.0'
  s.add_development_dependency 'rspec-rails', '~> 4.0'
  s.add_development_dependency 'rubocop', '~> 0.60'
  s.add_development_dependency 'rubocop-performance', '~> 1.5'
  s.add_development_dependency 'rubocop-rspec', '~> 1.37'
  s.add_development_dependency 'simplecov', '~> 0.1'
  s.metadata['rubygems_mfa_required'] = 'true'
end
