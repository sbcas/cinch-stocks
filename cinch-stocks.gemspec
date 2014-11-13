# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'cinch/plugins/stocks/version'

Gem::Specification.new do |gem|
  gem.name          = 'cinch-stocks'
  gem.version       = Cinch::Plugins::Stocks::VERSION
  gem.authors       = ['Samuel Cassiba']
  gem.email         = ['sam@cassiba.com']
  gem.description   = %q{Cinch Plugin to get stock ticker data using the stock_quote gem}
  gem.summary       = %q{Cinch Plugin to get stock ticker data}
  gem.homepage      = 'https://github.com/scassiba/cinch-stocks'
  gem.license       = 'MIT'

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ['lib']

  gem.add_development_dependency 'rake', '~> 10'
  gem.add_development_dependency 'rspec', '~> 3'
  gem.add_development_dependency 'coveralls', '~> 0.7'
  gem.add_development_dependency 'cinch-test', '~> 0.1', '>= 0.1.0'
  gem.add_dependency 'cinch', '~> 2'
  gem.add_dependency 'cinch-cooldown', '~> 1.1', '>= 1.1.1'
  gem.add_dependency 'stock_quote',   '~> 1.1', '>= 1.1.1'
  gem.add_dependency 'time-lord', '~> 1.0', '>= 1.0.1'
end
