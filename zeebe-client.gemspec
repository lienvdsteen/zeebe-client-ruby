
$LOAD_PATH.push File.expand_path('lib', __dir__)

require 'zeebe/client/version'

Gem::Specification.new do |s|
  s.name = 'zeebe-client'
  s.version = Zeebe::Client::VERSION
  s.summary = 'Zeebe Client'
  s.description = 'Zeebe client containing a simple wrapper for the GRPC protocol used by Zeebe.io.'
  s.author = 'Christian Nicolai'
  s.email = 'chrnicolai@gmail.com'
  s.homepage = 'https://github.com/zeebe-io/zeebe-client-ruby'
  s.license = 'Apache-2.0'

  s.files = `git ls-files`.split($INPUT_RECORD_SEPARATOR)
  s.test_files = s.files.grep(%r{^(test|spec|features)/})
  s.require_paths = ['lib']

  s.required_ruby_version = '>= 3.0'

  s.add_runtime_dependency 'grpc', '~> 1.32'

  s.add_development_dependency 'bundler'
  s.add_development_dependency 'bundler-audit', '~> 0.9.0'
  s.add_development_dependency 'grpc-tools', '~> 1.68.1'
  s.add_development_dependency 'rake'
  s.add_development_dependency 'rspec'
  s.add_development_dependency 'rubocop', '~> 1.28.2'
  s.add_development_dependency 'rubocop-rake'
  s.add_development_dependency 'rubocop-rspec'
  s.add_development_dependency 'solargraph'
end
