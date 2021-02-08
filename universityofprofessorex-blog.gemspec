# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = "universityofprofessorex-blog"
  spec.version       = "1.0.0"
  spec.authors       = ["iamprofessorex"]
  spec.email         = ["professorex.university@gmail.com"]

  spec.summary       = "A simple blog theme based on Bootstrap 4 by Start Bootstrap."
  spec.homepage      = "https://github.com/universityofprofessorex/universityofprofessorex.github.io"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").select { |f| f.match(%r{^(assets|_layouts|_includes|_sass|LICENSE|README)}i) }

  spec.add_runtime_dependency "jekyll", ">= 3.9.0"

  spec.add_development_dependency "bundler", "~> 2.0.1"
  spec.add_development_dependency "rake", "~> 12.0"
end
