require "spec_helper"
require 'csv'
require 'boxing/kata/preferences_loader'

RSpec.describe PreferencesLoader do
  it 'should load from csv and print preferences' do
    expect(STDOUT).to receive(:puts).with("BRUSH PREFERENCES")
    expect(STDOUT).to receive(:puts).with("blue: 2")
    expect(STDOUT).to receive(:puts).with("green: 2")
    expect(STDOUT).to receive(:puts).with("pink: 1")

    table = CSV.read("spec/fixtures/family_preferences.csv", headers: true)
    preferences = PreferencesLoader.new().generate_preferences_hash(table)
    expect(preferences["blue"]).to be 2
    expect(preferences["green"]).to be 2
    expect(preferences["pink"]).to be 1

  end
end