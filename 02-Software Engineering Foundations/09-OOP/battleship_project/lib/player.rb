class Player
  def get_move
    # print "enter a position with coordinates separated with a space like `4 7`"
    # position = gets.chomp.split(" ")

    # new_coord = position.map do |ele|
    #   ele.to_i
    # end
    
    # new_coord

    # Given Solution
    print "enter a position with coordinates separated with a space like `4 7`"
    gets.chomp.split(" ").map(&:to_i)
    
  end
end
