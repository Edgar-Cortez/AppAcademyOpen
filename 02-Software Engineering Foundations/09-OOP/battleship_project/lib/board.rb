class Board
  attr_reader (:size)

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
end
