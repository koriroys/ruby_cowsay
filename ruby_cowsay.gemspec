lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ruby_cowsay/version'

Gem::Specification.new do |gem|
  gem.name          = %q{ruby_cowsay}
  gem.version       = RubyCowsay::VERSION

  gem.authors       = ["Patrick Tulskie"]
  gem.email         = ["patricktulskie@gmail.com"]
  gem.summary       = %q{Cowsay, written in ruby, as a gem.}
  gem.description   = %q{Cowsay, written in ruby, as a gem.}
  gem.homepage      = %q{http://github.com/PatrickTulskie/cowsay}

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
  gem.add_development_dependency "pry", "~> 0.9.12"
  gem.add_development_dependency "rspec", "~> 2.13.0"

end
