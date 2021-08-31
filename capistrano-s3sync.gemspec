# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'capistrano/s3sync/version'

Gem::Specification.new do |spec|
  spec.name          = "capistrano-s3sync"
  spec.version       = Capistrano::S3sync::VERSION
  spec.authors       = ["Atsuhito Machida"]
  spec.email         = ["machida@xtaltools.com"]
  spec.description   = %q{Sync to s3 server}
  spec.summary       = %q{Sync to s3 server}
  spec.homepage      = "https://github.com/xtaltools/capistrano-s3sync"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", ">= 2.2.10"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "capistrano", ">= 3.0.0"
  spec.add_development_dependency "s3sync", ">= 2.0.1"

end
