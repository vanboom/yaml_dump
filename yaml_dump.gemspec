# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'yaml_dump/version'

Gem::Specification.new do |spec|
  spec.name          = "yaml_dump"
  spec.version       = YamlDump::VERSION
  spec.authors       = ["Don Vanboom"]
  spec.email         = ["dvboom@hotmail.com"]
  spec.description   = %q{Dump yaml fixtures from existing rails application data.}
  spec.summary       = %q{Use yaml_dump:dump to export application data to spec/fixtures.}
  spec.homepage      = "https://github.com/vanboom/yaml_dump"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
