# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "common_cucumber_steps/version"

Gem::Specification.new do |s|
  s.name        = "common_cucumber_steps"
  s.version     = CommonCucumberSteps::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Benjamin Smith"]
  s.email       = ["benjamin.lee.smith@gmail.com"]
  s.homepage    = "https://github.com/benjaminleesmith"
  s.summary     = %q{Commonly used cucumber steps.}
  s.description = %q{Commonly used cucumber steps.}

  s.rubyforge_project = "common_cucumber_steps"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
  s.add_dependency('rspec-rails')
  s.add_dependency('cucumber-rails')
  s.add_dependency('capybara')
  s.add_dependency('database_cleaner')
  s.add_dependency('selenium-webdriver')
end
