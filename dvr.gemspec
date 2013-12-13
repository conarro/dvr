# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'dvr/version'

Gem::Specification.new do |spec|
  spec.name          = "dvr"
  spec.version       = DVR::VERSION
  spec.authors       = ["Kyle Conarro"]
  spec.email         = ["kyle.conarro@rigor.com"]
  spec.description   = "Mimic your Rails API backend by generating a fake server using recorded HTTP responses"
  spec.summary       = "DVR makes it easy to mimic your Rails API backend by generating a fake server using recorded HTTP responses"
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "pry"

  spec.add_dependency 'thor'
  spec.add_dependency 'json'
  spec.add_dependency 'sinatra'
end
