# frozen_string_literal: true

require_relative "lib/onlyfans/version"

Gem::Specification.new do |s|
  s.name = "onlyfans"
  s.version = Onlyfans::VERSION
  s.summary = "OnlyFans Ruby SDK for the OnlyFans API (onlyfansapi.com)"
  s.description = "The OnlyFans Ruby SDK. Call any OnlyFans API endpoint from Ruby 3.2+ or Rails, with typed responses (Sorbet, RBS) and automatic retries. Guide: https://onlyfansapi.com/sdk/ruby"
  s.authors = ["Only Fans API"]
  s.email = "hello@onlyfansapi.com"
  s.homepage = "https://onlyfansapi.com/sdk/ruby"
  s.metadata["homepage_uri"] = s.homepage
  s.metadata["documentation_uri"] = "https://docs.onlyfansapi.com"
  s.metadata["source_code_uri"] = "https://github.com/onlyfansapi/onlyfansapi-ruby"
  s.metadata["changelog_uri"] = "https://github.com/onlyfansapi/onlyfansapi-ruby/blob/main/CHANGELOG.md"
  s.metadata["rubygems_mfa_required"] = false.to_s
  s.required_ruby_version = ">= 3.2.0"

  s.files = Dir[
    "lib/**/*.rb",
    "rbi/**/*.rbi",
    "sig/**/*.rbs",
    "manifest.yaml",
    "SECURITY.md",
    "CHANGELOG.md",
    ".ignore"
  ]
  s.extra_rdoc_files = ["README.md"]
  s.add_dependency "cgi"
  s.add_dependency "connection_pool"
end
