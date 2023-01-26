require File.expand_path('lib/index_checker/version', __dir__)

Gem::Specification.new do |s|
  s.name        = "index_checker"
  s.version     = IndexChecker::VERSION
  s.summary     = "Index Checker"
  s.description = "A simple ruby gem for view statistic information abount index"
  s.authors     = ["Lê Đức Hoà"]
  s.email       = "leduchoabatr12@gmail.com"
  s.files       = ["lib/index_checker.rb"]
  s.homepage    =
    "https://github.com/dontregret9/index_checker"
  s.license       = "MIT"

  s.add_dependency 'pg'
  s.add_dependency 'erb'
  s.add_dependency 'launchy'
end
