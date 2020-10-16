require_relative "board"
require_relative "player"

class Battleship
  def initialize(n)
    @player = Player.new
    @board = Board.new(n)
    @remaining_misses = @board.size * 0.50
  end

  def board
    @board
  end

  def player
    @player
  end

  def start_game
    @board.place_random_ships
    print @board.num_ships
    @board.print
  end

  def lose?
    if @remaining_misses <= 0
      print "you lose"
      return true
    else
      return false      
    end
  end

  def win?
    if @board.num_ships == 0
      print "you win"
      return true
    else
      return false
    end
  end

  def game_over?
    if self.lose? == true || self.win? == true
      return true
    else
      return false
    end
  end

  def turn    
    if @board.attack(@player.get_move) == true
      @remaining_misses
    else
      @remaining_misses -= 1
    end

    @board.print
    print "Remaining misses: #{@remaining_misses}"
  end
end
