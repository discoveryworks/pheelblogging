Gem::Specification.new do |spec|
  spec.name          = "pheelblogging"
  spec.version       = "0.1.0"
  spec.authors       = ["Jonathan Berger"]
  spec.email         = ["jonathanpberger@gmail.com"]

  spec.summary       = "Tools for PHEELblogging - capturing Plans, Hypotheses, Explorations, Experiments, and Learnings"
  spec.description   = "A CLI and library for maintaining PHEELblog conventions in your project. Provides linting, scaffolding, and validation for team documentation."
  spec.homepage      = "https://github.com/discoveryworks/pheelblogging"
  spec.license       = "MIT"

  spec.required_ruby_version = ">= 3.0.0"

  spec.files         = Dir["lib/**/*", "bin/*", "HOW_TO_PHEEL.md", "README.md", "LICENSE"]
  spec.bindir        = "bin"
  spec.executables   = ["pheel"]
  spec.require_paths = ["lib"]

  spec.add_dependency "thor", "~> 1.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage
end
