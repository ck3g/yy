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
end
