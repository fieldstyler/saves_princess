def display_path_to_princess(n, grid)
  m_index = grid.index('m') - n / 2
  #.index method counts \n as an index position.
  #Subtracting n / 2 will always get the correct index for 'm'
  p_index = grid.index('p')
  #The if statement below adjusts the index of 'p' when it is in the bottom row
  if p_index == (n + 1) * (n - 1) || p_index == (n * (n + 1)) - 2
    p_index -= (n - 1)
  end
  directions_to_princess = ""
  if p_index < m_index
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
