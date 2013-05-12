# -*- encoding: utf-8 -*-
VERSION = "1.0"

Gem::Specification.new do |spec|
  spec.name          = "goldensections"
  spec.version       = VERSION
  spec.authors       = ["Austin Seraphin"]
  spec.email         = ["austin@austinseraphin.com"]
  spec.description   = %q{Easily make views based on the golden section}
  spec.summary       = %q{Welcome to Golden Sections, a RubyMotion gem for creating views based
on the golden mean. I wrote this gem because using the golden mean
looks naturally beautiful. Instead of guessing or picking round
numbers, why not use something more appealing? Give your app the Midas}
  spec.homepage      = "httpps://github.com/austinseraphin/goldensections"
  spec.license       = "GPL"

  files = []
  files << 'README.md'
  files.concat(Dir.glob('lib/**/*.rb'))
  spec.files         = files
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

spec.add_dependency "geomotion"
  spec.add_development_dependency "rake"
end
