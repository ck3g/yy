$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "yy/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "yy"
  s.version     = Yy::VERSION
  s.authors     = ["Vitaly Tatarintsev"]
  s.email       = ["Vitaly.Tatarintsev@gmail.com"]
  s.homepage    = "http://github.com/ck3g/yy"
  s.summary     = "Yackety-Yack Forum Engine"
  s.description = "Primary developed to be used as forum for starcraft.md. The main goals also to get with Rails Engines and practicing AngularJS"


  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 4.0.4"

  s.add_development_dependency "pg"

  s.add_development_dependency 'launchy'
  s.add_development_dependency 'rspec-rails'
  s.add_development_dependency 'capybara'
  s.add_development_dependency 'factory_girl_rails'
  s.add_development_dependency 'database_cleaner'
  s.add_development_dependency 'shoulda'

  s.add_development_dependency 'jquery-rails'
  s.add_development_dependency 'sass-rails'
  s.add_development_dependency 'coffee-rails'
end
