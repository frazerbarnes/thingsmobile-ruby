require_relative 'lib/thingsmobile/version'

Gem::Specification.new do |spec|
  spec.name          = "thingsmobile"
  spec.version       = Thingsmobile::VERSION
  spec.authors       = ["frazer"]
  spec.email         = ["frazer@altitude.tech"]

  spec.summary       = %q{things_mobile API Wrapper}
  spec.description   = %q{An API wrapper to manage things_mobile}
  spec.homepage      = "https://www.simlink.io"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.add_runtime_dependency "httparty"

  spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/IronLink-io/thingsmobile-ruby.git"
  spec.metadata["changelog_uri"] = "https://github.com/IronLink-io/thingsmobile-ruby/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
