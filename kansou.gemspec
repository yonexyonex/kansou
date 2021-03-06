# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'kansou/version'

Gem::Specification.new do |spec|
  spec.name          = "kansou"
  spec.version       = Kansou::VERSION
  spec.authors       = ["punchdrunker"]
  spec.email         = ["takafumi.nanao@mixi.co.jp"]

  spec.summary       = %q{scraping app reviews in google play store and ios app store}
  spec.description   = %q{Kansou is scraping tool for user reviews of smart phone apps}
  spec.homepage      = "https://github.com/punchdrunker/kansou"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
  spec.add_dependency "json"
  spec.add_dependency "oga"

  spec.add_development_dependency "bundler", "~> 1.9"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
end
