class PreferencesLoader
  def generate_preferences_hash(csv_table)
    preferences = Hash.new(0)
    csv_table.by_col[2].each { |color| preferences[color] +=1 }

    puts "BRUSH PREFERENCES"
    preferences.each_pair do | key, value|
      puts "#{key}: #{value}"
    end
    preferences

  end
end