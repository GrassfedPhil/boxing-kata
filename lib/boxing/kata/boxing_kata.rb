require "boxing/kata/version"
require 'csv'

module Boxing
  module Kata

    def self.report
      unless has_input_file?
        puts "Usage: ruby ./bin/boxing-kata <spec/fixtures/family_preferences.csv"
      end

      table = CSV.read(ARGV[0], headers: true)
      preferences = PreferencesLoader.new().generate_preferences_hash(table)
      puts preferences
    end

    def self.has_input_file?
      !STDIN.tty?
    end
  end
end
