# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'object_slicer/version'

Gem::Specification.new do |spec|
  spec.name          = "object_slicer"
  spec.version       = ObjectSlicer::VERSION
  spec.authors       = ["TANIGUCHI Kohei"]
  spec.email         = ["a.d.xvii.kal.mai@gmail.com"]
  spec.summary       = %q{This slices objects.}
  spec.description   = <<EOS
Add a method `slice` to objects. It works like `Hash#slice` because objects can
be considered as associative array :)
EOS
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", ">= 12.3.3"
  spec.add_development_dependency 'rspec', '~> 3'
end
