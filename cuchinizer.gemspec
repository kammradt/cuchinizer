lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name = "cuchinizer"
  spec.version = "1.4"
  spec.authors = ["Vinicius Kammradt", "Gabriel Rohden"]
  spec.email = ["vinicius.kammradt1@gmail.com", "gabriel_rohden@outlook.com"]

  spec.summary = "'cuchinizer' allows you to write Ruby script by using only 'cuchi'. It's a simple and easy way to write Ruby scripts."
  spec.description = "'cuchinider' allows you to write Ruby script by using only 'cuchi'. It's a simple and easy way to write Ruby scripts."
  spec.homepage = "http://github.com/kammradt/cuchinizer"
  spec.license = "MIT"

  spec.files = `git ls-files`.split($/)
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
end
