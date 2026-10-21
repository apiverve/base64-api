# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = "apiverve_base64"
  spec.version       = "1.2.2"
  spec.authors       = ["APIVerve"]
  spec.email         = ["hello@apiverve.com"]

  spec.summary       = "Base64 Encoder/Decoder API - Ruby Client"
  spec.description   = "Base64 Encoder/Decoder encodes plain text into Base64 and decodes encoded strings back to readable characters. Submit any string with an encode or decode action to receive the converted output, the original input, and character length."
  spec.homepage      = "https://apiverve.com/marketplace/base64?utm_source=ruby&utm_medium=referral&utm_content=homepage"
  spec.license       = "MIT"
  spec.required_ruby_version = ">= 2.7.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/apiverve/base64-API/tree/main/ruby"
  spec.metadata["changelog_uri"] = "https://apiverve.com/changelog"
  spec.metadata["documentation_uri"] = "https://docs.apiverve.com/ref/base64"

  spec.files = Dir.glob("{lib}/**/*") + %w[README.md LICENSE]
  spec.require_paths = ["lib"]

  spec.add_dependency "faraday", ">= 1.0", "< 3.0"
  spec.add_dependency "faraday-multipart", "~> 1.0"
  spec.add_dependency "json", "~> 2.0"
end
