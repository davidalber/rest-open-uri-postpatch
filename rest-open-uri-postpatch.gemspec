# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "rest-open-uri-postpatch/version"

Gem::Specification.new do |s|
  s.name        = "rest-open-uri-postpatch"
  s.version     = Rest::Open::Uri::Postpatch::VERSION
  s.authors     = ["David Alber"]
  s.email       = ["alber.david@gmail.com"]
  s.homepage    = ""
  s.summary     = %q{A drop-in replacement for open-uri (forked from rest-open-uri) for use in REST clients.}
  s.description = %q{rest-open-uri-postpatch is a slightly modified version of rest-open-uri. It fixes two issues with rest-open-uri: (1) redirects from a resource accessed with any method other than GET fails in rest-open-uri because it tries to use the same method as the original request; (2) rest-open-uri does not allow specification of content-type, which leads to warnings from net/http when doing a POST.}

  s.rubyforge_project = "rest-open-uri-postpatch"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
