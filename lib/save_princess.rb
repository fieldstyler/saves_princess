def display_path_to_princess(n, grid)
  if n % 2 == 0 || n < 3 || n > 99
    return 'n must be an odd number between 2 and 100'
  elsif grid.class != String
    return 'grid must be a string'
  elsif !grid.include?('m') || !grid.include?('p')
    return "mario 'm' and princess 'p' must both be on the grid"
  else
    #.index method counts \n as an index position.
    #Subtracting n / 2 will always get the correct index for 'm'
    m_index = grid.index('m') - n / 2
    p_index = get_p_index(grid, n)
    print_directions_to_princess(p_index, m_index, n)
  end
end

def get_p_index(grid, n)
  p_index = grid.index('p')
  #.index method counts \n as an index position.
  #The if statement below adjusts the index of 'p' when it is in the bottom row
  if p_index == (n + 1) * (n - 1) || p_index == (n * (n + 1)) - 2
    p_index -= (n - 1)
  end
  p_index
end

def print_directions_to_princess(p_index, m_index, n)
  directions_to_princess = ""
  if p_index < m_index
    #abs of the difference == n / 2 means 'p' and 'm' are in the same row
    until (m_index - p_index).abs == n / 2
      directions_to_princess += "UP\n"
      m_index -= n
    end
  elsif p_index > m_index
    until (m_index - p_index).abs == n / 2
      directions_to_princess += "DOWN\n"
      m_index += n
    end
  end
  if p_index < m_index
    until m_index == p_index
      if (m_index - p_index).abs > 1
        directions_to_princess += "LEFT\n"
        m_index -= 1
      else
        directions_to_princess += "LEFT"
        m_index -= 1
      end
    end
  elsif p_index > m_index
    until m_index == p_index
      if (m_index - p_index).abs > 1
        directions_to_princess += "RIGHT\n"
        m_index += 1
      else
        directions_to_princess += "RIGHT"
        m_index += 1
      end
    end
  end
  directions_to_princess
end
