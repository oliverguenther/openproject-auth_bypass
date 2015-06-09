# encoding: UTF-8
$:.push File.expand_path("../lib", __FILE__)

require 'open_project/auth_bypass/version'
# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "openproject-auth_bypass"
  s.version     = OpenProject::AuthBypass::VERSION
  s.authors     = "Oliver Günther"
  s.email       = "mail@oliverguenther.de"
  s.homepage    = "https://www.github.com/oliverguenther/openproject-auth_bypass"
  s.summary     = 'Sys API Authentication Bypass Plugin'
  s.description = "This plugin overrides the Sys API Basic Authentication for externally authenticated Apache directives."
  s.license     = "MIT"

  s.files = Dir["{lib}/**/*"] + %w(README.md)

end
