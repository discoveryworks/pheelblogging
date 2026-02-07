# ABOUTME: Main entry point for the pheelblogging gem.
# ABOUTME: Loads all components and exposes the CLI.

require "thor"
require_relative "pheelblogging/version"
require_relative "pheelblogging/cli"

module Pheelblogging
  class Error < StandardError; end
end
