#!/usr/bin/env ruby

module Hotdog
  module Commands
    class Update < BaseCommand
      def run(args=[])
        application.run_command("init")
        if 0 < args.length
          args.each do |host_name|
            update_host_tags(host_name, @options.dup)
          end
        else
          update_tags(@options.dup)
        end
      end
    end
  end
end

# vim:set ft=ruby :