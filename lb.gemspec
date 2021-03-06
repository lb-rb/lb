# frozen_string_literal: true
# encoding: utf-8

require File.expand_path('../lib/lb/version', __FILE__)

Gem::Specification.new do |gem|
  gem.name        = 'lb'
  gem.version     = LB::VERSION.dup
  gem.authors     = ['Firas Zaidan']
  gem.email       = ['firas@zaidan.de']
  gem.description = 'LB'
  gem.summary     = gem.description
  gem.homepage    = 'https://github.com/lb-rb/lb'
  gem.license     = 'MIT'

  gem.bindir                = 'bin'
  gem.require_paths         = %w(lib bin)
  gem.files                 = `git ls-files`
                              .split($INPUT_RECORD_SEPARATOR)
  gem.executables           = `git ls-files -- bin/*`
                              .split("\n").map { |f| File.basename(f) }
  gem.test_files            = `git ls-files -- spec`
                              .split($INPUT_RECORD_SEPARATOR)
  gem.extra_rdoc_files      = %w(README.md)
  gem.required_ruby_version = '>= 2.4'

  gem.add_development_dependency 'devtools',       '~> 0.1.18'
  gem.add_development_dependency 'guard',          '~> 2.14'
  gem.add_development_dependency 'guard-bundler',  '~> 2.1'
  gem.add_development_dependency 'guard-rspec',    '~> 4.7', '>= 4.7.3'
  gem.add_development_dependency 'guard-rubocop',  '~> 1.3'
end
