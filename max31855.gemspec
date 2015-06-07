# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'max31855/version'

Gem::Specification.new do |spec|
  spec.name          = "max31855"
  spec.version       = Max31855::VERSION
  spec.authors       = ["Yuki MIZUNO"]
  spec.email         = ["mizuyuu0904@gmail.com"]

  spec.summary       = %q{MAX31855 thermocouple sensor library}
  spec.description   = %q{MAX31855 thermocouple sensor library}
  spec.homepage      = "https://github.com/mzyy94/max31855"
  spec.license       = "GPLv3"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
  spec.extensions    = ["ext/max31855/extconf.rb"]

  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com' to prevent pushes to rubygems.org, or delete to allow pushes to any server."
  end

  spec.add_development_dependency "bundler", "~> 1.8"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rake-compiler"
end
