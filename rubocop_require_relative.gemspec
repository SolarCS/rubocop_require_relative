# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rubocop_require_relative/version'

Gem::Specification.new do |spec|
  spec.name          = "rubocop_require_relative"
  spec.version       = RubocopRequireRelative::VERSION
  spec.authors       = ["Max Jacobson", "Ethan Zhou"]
  spec.email         = ["max@hardscrabble.net", "ethanez713@gmail.com"]

  spec.summary       = %q{RuboCop extension which forbids require_relative}
  spec.description   = %q{Sometimes it causes some trouble. Take that as read. This will let you know when you slip, and include require_relative.}
  spec.homepage      = "https://github.com/SolarCS/rubocop_require_relative"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "rubocop", "~> 1.30"
  spec.add_development_dependency "bundler", "~> 2.2"
  spec.add_development_dependency "rake", "~> 13.0"
end
