require 'minitest/autorun'
require 'minitest/pride'
require './lib/save_princess'

class SavePrincessTest < Minitest::Test
  def test_solution
    assert_equal 'DOWN\nRIGHT', display_path_to_princess(3, "---\n-m-\n--p")
    assert_equal 'UP\nUP\nLEFT\nLEFT', display_path_to_princess(5, "p----\n-----\n--m--\n-----\n-----")
    assert_equal 'UP\nUP\nUP\nRIGHT\nRIGHT\nRIGHT', display_path_to_princess(7, "------p\n-------\n-------\n---m---\n-------\n-------\n-------")
    assert_equal 'DOWN\nDOWN\nDOWN\nDOWN\nLEFT\nLEFT\nLEFT\nLEFT', display_path_to_princess(9, "---------\n---------\n---------\n---------\n----m----\n---------\n---------\n---------\np--------")
  end
end
