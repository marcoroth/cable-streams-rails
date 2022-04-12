require_relative "lib/cable_streams/version"

Gem::Specification.new do |s|
  s.name     = "cable_streams"
  s.version  = CableStreams::VERSION
  s.authors  = ["Marco Roth"]
  s.email    = "marco.roth@hey.com"
  s.summary  = "Extend Turbo Streams with Custom Turbo Stream Actions or CableReady operations"
  s.homepage = "https://github.com/marcoroth/cable-streams-rails"
  s.license  = "MIT"

  s.required_ruby_version = ">= 2.6.0"

  s.add_dependency "actionpack", ">= 6.0.0"
  s.add_dependency "railties", ">= 6.0.0"
  s.add_dependency "cable_ready", ">= 5.0.0.pre9"
  s.add_dependency "turbo-rails"

  s.files = Dir["{app,config,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
end
