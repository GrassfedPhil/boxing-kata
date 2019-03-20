class StarterBoxGenerator
  def get_boxes_for_preferences(preferences_hash)
    box = Array.new
    preferences_hash.each do |key, value|
      while value > 0 do
        box << key
        value -= 1
      end
    end
    box.each_slice(2) do |a, b|
      if a == b
        puts "STARTER BOX\n2 #{a} brushes\n2 #{a} replacement heads"
      elsif b != nil
        puts "STARTER BOX\n1 #{a} brush\n1 #{a} replacement head\n1 #{b} brush\n1 #{b} replacement head"
      else
        puts "STARTER BOX\n1 #{a} brush\n1 #{a} replacement head"
      end
    end
  end
end