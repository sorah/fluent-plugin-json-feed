# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'fluent-plugin-json-feed/version'

Gem::Specification.new do |spec|
  spec.name          = "fluent-plugin-json-feed"
  spec.version       = Fluent::JsonFeedInput::VERSION
  spec.authors       = ["Shota Fukumori (sora_h)"]
  spec.email         = ["her@sorah.jp"]
  spec.description   = %q{Fluent input plugin; This will emit event using JSON.}
  spec.summary       = %q{Fluent input plugin; This emits event from JSON, by watching element using JSONPath.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "fluentd", "~> 0.10"

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec", '~> 2.14.1'
end
