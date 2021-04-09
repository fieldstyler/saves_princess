
def next_move(n, r, c, grid)
  m_index = n * r + c
  p_index = get_p_index(n, grid)
  move = print_next_move(m_index, p_index, n)
end

def get_p_index(n, grid)
  p_index = grid.index('p')
  x = 0
  until p_index >= x * (n + 1) && p_index <= (x + 1) * (n + 1) - 2
    x += 1
  end
  p_index -= x
  p_index
end

def print_next_move(m_index, p_index, n)
  if p_index < m_index
    if (p_index - (m_index - 1)).abs >= (p_index - (m_index - n)).abs
      move = "UP"
    else
      move = "LEFT"
    end
  elsif p_index > m_index
    if (p_index - (m_index + 1)).abs >= (p_index - (m_index + n)).abs
      move = "DOWN"
    else
      move = "RIGHT"
    end
  end
  move
end
