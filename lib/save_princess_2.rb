
def next_move(n, r, c, grid)
  if n < 2 || n > 99
    return 'n must be a number between 2 and 100'
  elsif r > (n - 1) || c > (n - 1) || r < 0 || c < 0
    return 'r and c must be able to fit on the grid aka smaller than n-1 and greater than or equal to zero'
  elsif grid.class != String
    return 'grid must be a string'
  elsif !grid.include?('m') || !grid.include?('p')
    return "mario 'm' and princess 'p' must both be on the grid"
  else
    m_index = n * r + c
    p_index = get_p_index(n, grid)
    move = print_next_move(m_index, p_index, n)
  end
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
    if same_row?(m_index, p_index, n)
      move = "LEFT"
    else
      move = "UP"
    end
  elsif p_index > m_index
    if same_row?(m_index, p_index, n)
      move = "RIGHT"
    else
      move = "DOWN"
    end
  end
  move
end

def same_row?(m_index, p_index, n)
  x = 0
  y = 0
  until p_index >= x * n && p_index <= (x + 1) * n - 1
    x += 1
  end
  until m_index >= y * n && m_index <= (y + 1) * n - 1
    y += 1
  end
  if x == y
    true
  else
    false
  end
end
