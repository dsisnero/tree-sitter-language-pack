#!/usr/bin/env ruby
# frozen_string_literal: true

require "rubygems"
require "rubygems/package"
require "fileutils"

platform = ARGV[0] or abort("Usage: #{$PROGRAM_NAME} <platform>")

## Supported platforms for pre-compiled native gems.
VALID_PLATFORMS = %w[x86_64-linux aarch64-linux arm64-darwin x86_64-darwin].freeze
unless VALID_PLATFORMS.include?(platform)
  abort("ERROR: Invalid platform '#{platform}'. Valid: #{VALID_PLATFORMS.join(", ")}")
end

gem_dir = File.expand_path("../../../packages/ruby", __dir__)
Dir.chdir(gem_dir)

native_extensions = Dir.glob("lib/**/*.{so,bundle,dylib}")
if native_extensions.empty?
  abort("ERROR: No compiled native extensions found in lib/. Run 'rake compile' first.")
end

puts("Found native extensions: #{native_extensions.join(", ")}")

spec = Gem::Specification.load("tree_sitter_language_pack.gemspec")
abort("ERROR: Could not load tree_sitter_language_pack.gemspec") unless spec

spec.platform = Gem::Platform.new(platform)

spec.extensions = []

native_extensions.each do |ext|
  spec.files << ext unless spec.files.include?(ext)
end

spec.files.reject! { |f| f.start_with?("vendor/") || f.start_with?("ext/") }

spec.dependencies.reject! { |d| d.name == "rb_sys" }

spec.files.uniq!

puts("Building gem: #{spec.name}-#{spec.version}-#{spec.platform}")
puts("Files: #{spec.files.length} (native: #{native_extensions.length})")

gem_file = Gem::Package.build(spec)

puts("Built: #{gem_file}")
