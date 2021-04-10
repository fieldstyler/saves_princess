input = ARGF.read
lines = input.strip.split("\n")
n = lines[0].to_i
r,c = lines[1].strip.split.map {|n| n.to_i}
grid = lines[2..-1].join("\n")

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

print next_move(n, r, c, grid)
