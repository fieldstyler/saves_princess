require 'rspec'
require './lib/save_princess'

RSpec.describe "Save Princess" do
  it "Provides steps to save princess when given valid inputs" do
    expect(display_path_to_princess(3, "---\n-m-\n--p")).to eq("DOWN\nRIGHT")
    expect(display_path_to_princess(5, "p----\n-----\n--m--\n-----\n-----")).to eq("UP\nUP\nLEFT\nLEFT")
    expect(display_path_to_princess(7, "------p\n-------\n-------\n---m---\n-------\n-------\n-------")).to eq("UP\nUP\nUP\nRIGHT\nRIGHT\nRIGHT")
    expect(display_path_to_princess(9, "---------\n---------\n---------\n---------\n----m----\n---------\n---------\n---------\np--------")).to eq("DOWN\nDOWN\nDOWN\nDOWN\nLEFT\nLEFT\nLEFT\nLEFT")
  end

  it "Returns a message if the n-value input is invalid" do
    expect(display_path_to_princess(-3, "---\n-m-\n--p")).to eq("n must be an odd number between 2 and 100")
    expect(display_path_to_princess(105, "---\n-m-\n--p")).to eq("n must be an odd number between 2 and 100")
    expect(display_path_to_princess(4, "----\n--m-\n----\n---p")).to eq("n must be an odd number between 2 and 100")
  end

  it "Returns a message if the grid input is invalid" do
    expect(display_path_to_princess(11, [3, 'a', true])).to eq("grid must be a string")
    expect(display_path_to_princess(3, "---\n-m-\n---")).to eq("mario 'm' and princess 'p' must both be on the grid")
    expect(display_path_to_princess(3, "---\n---\n--p")).to eq("mario 'm' and princess 'p' must both be on the grid")
  end
end
