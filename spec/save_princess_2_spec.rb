require 'rspec'
require './lib/save_princess_2'

RSpec.describe "Save Princess 2" do
  it "Provides next step to save princess when given valid inputs" do
    expect(next_move(5, 2, 3, "-----\n-----\n---mp\n-----\n-----")).to eq("RIGHT")
    expect(next_move(5, 0, 2, "--m--\n-----\n----p\n-----\n-----")).to eq("DOWN")
    expect(next_move(5, 4, 2, "-----\n-----\n----p\n-----\n--m--")).to eq("UP")
    expect(next_move(5, 4, 2, "-----\n-----\n-----\n-----\n-pm--")).to eq("LEFT")
    expect(next_move(5, 4, 2, "-----\n-----\n-----\n---p-\n--m--")).to eq("UP")
    expect(next_move(2, 1, 1, "p-\n-m")).to eq("UP")
    expect(next_move(2, 1, 1, "-p\n-m")).to eq("UP")
    expect(next_move(2, 1, 1, "--\npm")).to eq("LEFT")
    expect(next_move(2, 0, 0, "mp\n--")).to eq("RIGHT")
    expect(next_move(2, 0, 0, "m-\np-")).to eq("DOWN")
    expect(next_move(2, 0, 0, "m-\n-p")).to eq("DOWN")
    expect(next_move(3, 0, 0, "m--\n-p-\n---")).to eq("DOWN")
    expect(next_move(3, 0, 1, "-m-\n-p-\n---")).to eq("DOWN")
    expect(next_move(3, 0, 2, "--m\n-p-\n---")).to eq("DOWN")
    expect(next_move(3, 2, 0, "---\n-p-\nm--")).to eq("UP")
  end

  it "Returns a message if the n-value input is invalid" do
    expect(next_move(-3, -5, -5, "---\n-m-\n--p")).to eq("n must be a number between 2 and 100")
    expect(next_move(105, 20, 34, "---\n-m-\n--p")).to eq("n must be a number between 2 and 100")
  end

  it "Returns a message if the r-value or c-value inputs are invalid" do
    expect(next_move(5, 0, 6, "---\n-m-\n--p")).to eq("r and c must be able to fit on the grid aka smaller than n-1 and greater than or equal to zero")
    expect(next_move(5, 6, 0, "---\n-m-\n--p")).to eq("r and c must be able to fit on the grid aka smaller than n-1 and greater than or equal to zero")
    expect(next_move(4, 1, -1, "---\n-m-\n--p")).to eq("r and c must be able to fit on the grid aka smaller than n-1 and greater than or equal to zero")
    expect(next_move(4, -1, 1, "---\n-m-\n--p")).to eq("r and c must be able to fit on the grid aka smaller than n-1 and greater than or equal to zero")
  end

  it "Returns a message if the grid input is invalid" do
    expect(next_move(11, 3, 2, [3, 'a', true])).to eq("grid must be a string")
    expect(next_move(3, 2, 2, "---\n---\n--m")).to eq("mario 'm' and princess 'p' must both be on the grid")
    expect(next_move(3, 2, 2, "---\n---\n--p")).to eq("mario 'm' and princess 'p' must both be on the grid")
  end
end
