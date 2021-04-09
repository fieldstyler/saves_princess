require 'minitest/autorun'
require 'minitest/pride'
require './lib/save_princess'

class SavePrincessTest < Minitest::Test
  def test_working_solution
    assert_equal "DOWN\nRIGHT", display_path_to_princess(3, "---\n-m-\n--p")
    assert_equal "UP\nUP\nLEFT\nLEFT", display_path_to_princess(5, "p----\n-----\n--m--\n-----\n-----")
    assert_equal "UP\nUP\nUP\nRIGHT\nRIGHT\nRIGHT", display_path_to_princess(7, "------p\n-------\n-------\n---m---\n-------\n-------\n-------")
    assert_equal "DOWN\nDOWN\nDOWN\nDOWN\nLEFT\nLEFT\nLEFT\nLEFT", display_path_to_princess(9, "---------\n---------\n---------\n---------\n----m----\n---------\n---------\n---------\np--------")
  end

  def test_return_no_solution_with_invalid_n_value
    assert_equal "n must be an odd number between 2 and 100", display_path_to_princess(-3, "---\n-m-\n--p")
    assert_equal "n must be an odd number between 2 and 100", display_path_to_princess(105, "---\n-m-\n--p")
    assert_equal "n must be an odd number between 2 and 100", display_path_to_princess(4, "----\n--m-\n----\n---p")
  end

  def test_return_no_solution_with_invalid_grid_input
    assert_equal "grid must be a string", display_path_to_princess(11, [3, 'a', true])
    assert_equal "mario 'm' and princess 'p' must both be on the grid", display_path_to_princess(3, "---\n-m-\n---")
    assert_equal "mario 'm' and princess 'p' must both be on the grid", display_path_to_princess(3, "---\n---\n--p")
  end
end
