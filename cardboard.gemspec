# -*- encoding: utf-8 -*-

Gem::Specification.new do |gem|
  gem.name          = "cardboard"
  gem.version       = "0.0.0"
  gem.authors       = ["John Barnette", "Will Farrington"]
  gem.email         = ["jbarnette@github.com", "wfarr@github.com"]
  gem.description   = "Development tools for Boxen's puppet modules."
  gem.summary       = "Because copypasta is for toolbags."
  gem.homepage      = "https://github.com/boxen/cardboard"

  gem.files         = `git ls-files`.split $/
  gem.test_files    = gem.files.grep /^test/
  gem.require_paths = ["lib"]

  gem.add_dependency "librarian-puppet",       "~> 0.9"
  gem.add_dependency "puppet",                 "~> 3.0"
  gem.add_dependency "puppet-lint",            "~> 0.3"
  gem.add_dependency "puppetlabs_spec_helper", "~> 0.3"
  gem.add_dependency "rspec-puppet",           "~> 0.1"
end
