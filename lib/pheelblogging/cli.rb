# ABOUTME: Thor-based CLI for pheelblogging commands.
# ABOUTME: Provides init, lint, and new subcommands.

module Pheelblogging
  class CLI < Thor
    desc "init", "Initialize PHEELblogging structure in current directory"
    option :with_adr, type: :boolean, default: true, desc: "Include docs/adr/ folder"
    option :with_plans, type: :boolean, default: true, desc: "Include docs/plans/ folder"
    def init
      # TODO: Implement
      say "Creating PHEELblog structure...", :green
      say "  - docs/adr/" if options[:with_adr]
      say "  - docs/plans/" if options[:with_plans]
      say "Not yet implemented", :yellow
    end

    desc "lint", "Check PHEELblog entries for convention violations"
    option :fix, type: :boolean, default: false, desc: "Auto-fix fixable issues"
    def lint
      # TODO: Implement
      say "Checking PHEELblog conventions...", :green
      say "Not yet implemented", :yellow
    end

    desc "new TYPE TITLE", "Create a new PHEELblog entry"
    def new(type, title)
      # TODO: Implement
      case type
      when "adr"
        say "Creating new ADR: #{title}", :green
      when "plan"
        say "Creating new plan: #{title}", :green
      when "post", "pheel"
        say "Creating new PHEEL: #{title}", :green
      else
        say "Unknown type: #{type}. Use 'adr', 'plan', or 'post'", :red
        exit 1
      end
      say "Not yet implemented", :yellow
    end

    desc "version", "Print version"
    def version
      say "pheelblogging #{Pheelblogging::VERSION}"
    end
  end
end
