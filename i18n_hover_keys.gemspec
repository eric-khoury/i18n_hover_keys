# frozen_string_literal: true

require_relative "lib/i18n_hover_keys/version"

Gem::Specification.new do |spec|
  spec.name = "i18n_hover_keys"
  spec.version = I18nHoverKeys::VERSION
  spec.authors = ["Eric Khoury"]
  spec.email = ["khoury@live.se"]

  spec.summary = "A Rails extension that reveals translation keys when hovering over translated text, empowering QA teams and non-developers to identify the exact keys used in the interface."
  spec.description = "This gem extends the internationalization (i18n) functionality in Ruby on Rails by adding a simple toggle button to your application’s UI. When activated, it overlays each translated string with a tooltip that displays its associated translation key on hover. This allows QA teams, product managers, and other non-technical stakeholders to quickly identify which translation keys correspond to specific pieces of text on the page—without diving into source code. Designed for simplicity and ease-of-use, the gem integrates seamlessly with the Rails asset pipeline and can be easily enabled or disabled as needed, streamlining your localization quality assurance process."
  spec.homepage = "https://github.com/eric-khoury/i18n_hover_keys"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 3.0.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.

  # gemspec = File.basename(__FILE__)
  # spec.files = IO.popen(%w[git ls-files -z], chdir: __dir__, err: IO::NULL) do |ls|
  #   ls.readlines("\x0", chomp: true).reject do |f|
  #     (f == gemspec) ||
  #       f.start_with?(*%w[bin/ test/ spec/ features/ .git appveyor Gemfile])
  #   end
  # end
  spec.files = Dir['lib/**/*.rb', 'app/assets/**/*', 'LICENSE', 'README.md']

  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
