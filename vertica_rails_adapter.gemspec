# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'vertica_rails_adapter/version'

Gem::Specification.new do |gem|
  gem.name          = "vertica_rails_adapter"
  gem.version       = VerticaRailsAdapter::VERSION
  gem.authors       = ["Sasan Padidar"]
  gem.email         = ["sasan@raybeam.com"]
  gem.description   = %q{Vertica Adapter for ActiveRecord.}
  gem.summary       = %q{Adds activerecord functionalites to your Vertica connection. The credit goes to https://github.com/zemis for starting up the project.}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_dependency "rails", ">= 3.2.0"
  gem.add_dependency "vertica"

end
