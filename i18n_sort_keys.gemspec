# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "i18n_sort_keys/version"

Gem::Specification.new do |s|
  s.name        = "i18n_sort_keys"
  s.version     = I18nSortKeys::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Philippe Cantin"]
  s.email       = ["anoiaque@gmail.com"]
  s.homepage    = ""
  s.summary     = %q{Sort rails locales files in lexical order}
  s.description = %q{Sort locales keys in lexical order. Sort all locales if no path parameter given}
  s.add_dependency("rake")
  
  s.rubyforge_project = "i18n_sort_keys"
  s.files = Dir['lib/**/*.rb', 'lib/**/*.rake']
  s.require_path = "lib"
  s.test_files  = Dir['test/**/*.rb']
  s.has_rdoc = true
  s.extra_rdoc_files = ["README.rdoc"]

end
