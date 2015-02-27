# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

version = File.read(File.expand_path('../VERSION', __FILE__)).strip


Gem::Specification.new do |spec|
  spec.name          = "volt-materialize"
  spec.version       = version
  spec.authors       = ["Adam Cooper"]
  spec.email         = ["mail@adamcooper.de"]
  spec.summary       = %q{Materialize css for the volt framework}
  spec.homepage      = "http://materializecss.com/"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "volt", "~> 0.2.0"
  spec.add_development_dependency "rake"
end
