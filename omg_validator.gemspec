# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "omg_validator/version"

Gem::Specification.new do |s|
  s.name        = "omg_validator"
  s.version     = OmgValidator::VERSION
  s.authors     = ["Nickolas Kenyeres", "Michael Mottola"]
  s.email       = ["nkenyeres@gmail.com", "mikemottola@gmail.com"]
  s.homepage    = "http://llwebsol.github.com/omg_validator/"
  s.summary     = %q{A bunch of Rails validators to extend ActiveModel}
  s.description = %q{A bunch of Rails validators to extend ActiveModel}

  s.rubyforge_project = "omg_validator"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  # s.add_development_dependency "rspec"
  # s.add_runtime_dependency "rest-client"
  s.add_dependency 'activemodel'
end
