# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "double_make_sure/version"

Gem::Specification.new do |s|
  s.name        = "double_make_sure"
  s.version     = DoubleMakeSure::VERSION
  s.authors     = ["Scott Holden"]
  s.email       = ["scott@sshconnection.com"]
  s.homepage    = ""
  s.summary     = %q{Add redundancy to your project to ensure that it is twice as correct as ever before.}
  s.description = %q{DoubleMakeSure adds redundant testing and execution methods that allow you to use redundant tests and execution}

  s.rubyforge_project = "double_make_sure"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  s.add_development_dependency "rspec"
  s.add_development_dependency "simplecov"
  s.add_runtime_dependency "active_support", "~>3.0"
end