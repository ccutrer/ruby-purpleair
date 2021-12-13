# frozen_string_literal: true

Gem::Specification.new do |s|
  s.name = "purpleair"
  s.version = "0.0.2"
  s.platform = Gem::Platform::RUBY
  s.authors = ["Cody Cutrer"]
  s.email = "cody@cutrer.com'"
  s.homepage = "https://github.com/ccutrer/ruby-purpleair"
  s.summary = "Publish PurpleAir sensor data to mqtt"
  s.license = "MIT"

  s.bindir = "exe"
  s.executables = Dir["exe/*"].map { |f| File.basename(f) }
  s.files = Dir["{exe,lib}/**/*"]

  s.required_ruby_version = ">= 2.5"

  s.add_dependency "faraday_middleware", "~> 1.1"
  s.add_dependency "homie-mqtt", "~> 1.4"
  s.add_dependency "net-http-persistent", "~> 4.0"

  s.add_development_dependency "byebug", "~> 9.0"
  s.add_development_dependency "rake", "~> 13.0"
  s.add_development_dependency "rubocop", "~> 1.19"
  s.add_development_dependency "rubocop-rake", "~> 0.6"
end
