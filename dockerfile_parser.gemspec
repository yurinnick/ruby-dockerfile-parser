# coding: utf-8
Gem::Specification.new do |spec|
  spec.name          = 'dockerfile_parser'
  spec.version       = '0.4.0'
  spec.authors       = ['Nikolay Yurin']
  spec.email         = ['yurinnick@outlook.com']

  spec.summary       = 'Dockerfile parser'
  spec.description   = 'A Dockerfile parser written in pure Ruby'
  spec.license       = 'MIT'
  spec.require_paths = ['lib']

  spec.files = [
    'Gemfile',
    'LICENSE.txt',
    'README.md',
    'Rakefile',
    'spec/spec_helper.rb',
    'lib/dockerfile_parser.rb',
    'dockerfile_parser.gemspec'
  ]
  spec.add_development_dependency 'bundler', '~> 1.8'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 10.0'
  spec.add_development_dependency 'rubocop', '~> 0.45.0'
end
