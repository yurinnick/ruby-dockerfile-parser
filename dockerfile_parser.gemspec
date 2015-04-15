# coding: utf-8
Gem::Specification.new do |spec|
  spec.name          = 'dockerfile_parser'
  spec.version       = '0.1.0'
  spec.authors       = ['Nikolay Yurin']
  spec.email         = ['yurinnick@outlook.com']

  spec.summary       = 'Dockerfile parser'
  spec.description   = 'A Dockerfile parser written in pure Ruby'
  spec.license       = 'MIT'
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.8'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 10.0'
end
