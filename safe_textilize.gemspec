# -*- encoding: utf-8 -*-
Gem::Specification.new do |gem|
  gem.authors       = ["Reinier de Lange"]
  gem.email         = ["r.j.delange@nedforce.nl"]
  gem.description   = %q{Provides a helper method for sanitizing textilized text}
  gem.summary       = %q{Provides a helper method for sanitizing textilized text}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "safe_textilize"
  gem.require_paths = ["lib"]
  gem.version       = '0.0.1'
  
  gem.add_dependency 'sanitize'
  gem.add_dependency 'RedCloth'
end
