require 'rspec'
require 'boxing/kata/starter_box_generator'


describe StarterBoxGenerator do

  it 'should return an array of boxes for the supplied preferences' do
    expect(STDOUT).to receive(:puts).with("STARTER BOX\n2 blue brushes\n2 blue replacement heads")
    expect(STDOUT).to receive(:puts).with("STARTER BOX\n1 blue brush\n1 blue replacement head\n1 green brush\n1 green replacement head")
    expect(STDOUT).to receive(:puts).with("STARTER BOX\n1 green brush\n1 green replacement head")
    StarterBoxGenerator.new().get_boxes_for_preferences({"blue": 3, "green": 2})
  end
end