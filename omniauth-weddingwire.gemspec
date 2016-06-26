# -*- encoding: utf-8 -*-
$:.push File.expand_path('../lib', __FILE__)
require 'omniauth/weddingwire/version'

Gem::Specification.new do |s|
  s.name     = 'omniauth-weddingwire'
  s.version  = OmniAuth::Weddingwire::VERSION
  s.authors  = ['Kevin Musselman']
  s.email    = ['kmussel@gmail.com']
  s.summary  = 'Weddingwire OAuth2 Strategy for OmniAuth'
  s.homepage = 'https://github.com/kmussel/omniauth-weddingwire'
  s.license  = 'MIT'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map { |f| File.basename(f) }
  s.require_paths = ['lib']

  s.add_runtime_dependency 'omniauth-oauth2', '1.3.1'

  s.add_development_dependency 'minitest'
  s.add_development_dependency 'mocha'
  s.add_development_dependency 'rake'
end
