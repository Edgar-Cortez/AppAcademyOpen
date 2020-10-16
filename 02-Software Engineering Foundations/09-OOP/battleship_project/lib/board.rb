class Board
  attr_reader (:size)

  def self.print_grid(grid)
    grid.each do |ele|
      puts ele.join(" ")        
    end
  end

  def initialize(n)
    @grid = Array.new(n) { Array.new(n, :N)}
    @size = n * n
  end

  def [](position)
    # ele_1 = position[0]
    # ele_2 = position[1]

    # @grid[ele_1][ele_2]

    # Given Solution
    row, col = position  # This allows us to seperate and set the values of the array to a variable
    @grid[row][col]
  end

  def []=(position, value)
    # Given Solution
    row, col = position  # This allows us to seperate and set the values of the array to a variable
    @grid[row][col] = value
  end

  def num_ships
    # count = @grid.flatten.find_all { |i| i == :S}
    # count.length

    # Given Solution
    @grid.flatten.count { |ele| ele == :S }
  end

  def attack(position)    
    if self[position] == :S
      self[position] = :H
      p "You sunk my battleship!"
      return true
    else
      self[position] = :X
      return false
    end
  end

  def place_random_ships
  # Given Solution 
    total_ships = @size * 0.25    # getting 25% of the total ships on the grid
    
    while self.num_ships < total_ships    
      rand_row = rand(0...@grid.length)   
      rand_col = rand(0...@grid.length)
      pos = [rand_row, rand_col]
      self[pos] = :S
    end
  end

  def hidden_ships_grid
    # I was close. Didn't know I had to use map on each loop. Also, to return :N instead of set ele = :N
    @grid.map do |sub|
      sub.map do |ele|
        if ele == :S
          :N
        else
          ele
        end
      end
    end
  end

  def cheat
    # Was using self instead of Board. Remember to try exactly what it wants me to call first!
    Board.print_grid(@grid)
  end

  def print
    # Was using self instead of Board. Remember to try exactly what it wants me to call first!
    Board.print_grid(self.hidden_ships_grid)
  end
end
