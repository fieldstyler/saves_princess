require 'rspec'
require './lib/save_princess_2'

RSpec.describe "Save Princess 2" do
  it "Provides steps to save princess when given valid inputs" do
    expect(next_move(5, 2, 3, "-----\n-----\n---mp\n-----\n-----")).to eq("RIGHT")
  end
end
