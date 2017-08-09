
Gem::Specification.new do |spec|
  spec.name          = "embulk-filter-add_uuid"
  spec.version       = "0.1.0"
  spec.authors       = ["taiSon"]
  spec.summary       = "Add Uuid filter plugin for Embulk"
  spec.description   = "Add Uuid"
  spec.email         = ["abcdefghijk.lol.jp@gmail.com"]
  spec.licenses      = ["MIT"]
  spec.homepage      = "https://github.com/taiSon/embulk-filter-add_uuid"

  spec.files         = `git ls-files`.split("\n") + Dir["classpath/*.jar"]
  spec.test_files    = spec.files.grep(%r{^(test|spec)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency 'embulk', ['>= 0.8.27']
  spec.add_development_dependency 'bundler', ['>= 1.10.6']
  spec.add_development_dependency 'rake', ['>= 10.0']
end
