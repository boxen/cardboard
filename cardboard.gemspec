Gem::Specification.new do |gem|
  gem.name          = "cardboard"
  gem.version       = "1.0.4"
  gem.authors       = ["John Barnette", "Will Farrington"]
  gem.email         = ["jbarnette@github.com", "wfarr@github.com"]
  gem.description   = "Development tools for Boxen's puppet modules."
  gem.summary       = "Development dependencies for the ecosystem."
  gem.homepage      = "https://github.com/boxen/cardboard"

  gem.executables   = ["cardboard", "cardboardify"]
  gem.files         = `git ls-files`.split $/
  gem.test_files    = gem.files.grep /^test/
  gem.require_paths = ["lib"]

  gem.add_dependency "boxen",                  "~> 2.1"
  gem.add_dependency "puppet-lint",            "~> 0.3"
  gem.add_dependency "puppetlabs_spec_helper", "~> 0.4"
  gem.add_dependency "rspec-puppet",           "~> 0.1"
end
