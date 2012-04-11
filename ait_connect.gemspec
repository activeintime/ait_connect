# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "ait_connect/version"

Gem::Specification.new do |s|
  s.name        = "ait_connect"
  s.version     = "0.1"
  s.authors     = ["Daniel Morgan"]
  s.email       = ["danmorgz@gmail.com"]
  s.homepage    = ""
  s.summary     = %q{TODO: Write a gem summary}
  s.description = %q{TODO: Write a gem description}

  s.rubyforge_project = "ait_connect"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  # s.add_development_dependency "rspec"
  # s.add_runtime_dependency "rest-client"

  s.add_dependency(%q<typhoeus>, [">= 0"])
  s.add_dependency(%q<json>, [">= 0"])
end
