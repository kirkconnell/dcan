# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "dcan/version"

Gem::Specification.new do |s|
  s.name        = "dcan"
  s.version     = Dcan::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Carlos Kirkconnell"]
  s.email       = ["carlos.kirkconnell@gmail.com"]
  s.homepage    = "http://rubygems.org/gems/dcan"
  s.summary     = %q{Centralized authentication and authorization gem for distributed rails applications.}
  s.description = %q{A central authentication and authorization server distributes credential tokens through multiple rails applications via ActiveRecord. These credential tokens store cancan expressions which are evaluated on the clients to verify authorization. The credential tokens are digitally signed to prevent malicious manipulation of the ACL's.}

  s.rubyforge_project = "dcan"
  
  s.add_dependency 'cancan', '~> 1.5.0'
  
  s.add_development_dependency 'rspec', '~> 2.1.0'
  s.add_development_dependency 'rails', '~> 3.0.0'
  s.add_development_dependency 'mocha', '~> 0.9.9'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
