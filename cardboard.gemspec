Gem::Specification.new do |gem|
  gem.name          = "cardboard"
  gem.version       = "3.0.0"
  gem.authors       = ["John Barnette", "Will Farrington"]
  gem.email         = ["jbarnette@github.com", "wfarr@github.com"]
  gem.description   = "Development tools for Boxen's puppet modules."
  gem.summary       = "Development dependencies for the ecosystem."
  gem.homepage      = "https://github.com/boxen/cardboard"
  gem.license       = "MIT"

  gem.executables   = ["cardboard", "cardboardify"]
  gem.files         = `git ls-files`.split $/
  gem.test_files    = gem.files.grep /^test/
  gem.require_paths = ["lib"]

  gem.add_dependency "boxen",                  "~> 4.0"
  gem.add_dependency "puppet-lint"
  gem.add_dependency "puppetlabs_spec_helper", "~> 0.4"
  gem.add_dependency "rspec-puppet",           "~> 1.0"
end
