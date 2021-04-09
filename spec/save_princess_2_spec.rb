require 'rspec'
require './lib/save_princess_2'

RSpec.describe "Save Princess 2" do
  it "Provides next step to save princess when given valid inputs" do
    expect(next_move(5, 2, 3, "-----\n-----\n---mp\n-----\n-----")).to eq("RIGHT")
    expect(next_move(5, 0, 2, "--m--\n-----\n----p\n-----\n-----")).to eq("DOWN")
    expect(next_move(5, 4, 2, "-----\n-----\n----p\n-----\n--m--")).to eq("UP")
    expect(next_move(5, 4, 2, "-----\n-----\n-----\n-----\n-pm--")).to eq("LEFT")
    expect(next_move(2, 1, 1, "p-\n-m")).to eq("UP")
    expect(next_move(2, 1, 1, "-p\n-m")).to eq("UP")
    expect(next_move(2, 1, 1, "--\npm")).to eq("LEFT")
    expect(next_move(2, 0, 0, "mp\n--")).to eq("RIGHT")
    expect(next_move(2, 0, 0, "m-\np-")).to eq("DOWN")
    expect(next_move(2, 0, 0, "m-\n-p")).to eq("DOWN")
  end
end
