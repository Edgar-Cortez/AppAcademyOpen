class Code
  POSSIBLE_PEGS = {
    "R" => :red,
    "G" => :green,
    "B" => :blue,
    "Y" => :yellow
  }

  attr_reader(:pegs)

  def self.valid_pegs?(arr)
    arr.all? { |char| POSSIBLE_PEGS.include?(char.upcase) }
  end

  # def pegs
  #   @pegs
  # end

  def self.random(length)
    # rando = Code.new(Array.new(length, POSSIBLE_PEGS.keys.sample))
    # return rando

    return Code.new(Array.new(length, POSSIBLE_PEGS.keys.sample))
  end
  
  def self.from_string(pegs)
    # if Code.valid_pegs?(pegs)
    #   return pegs.split
    # end
    
    # DUH, specify how you want to split the string, so silly
    Code.new(pegs.split(""))
  end

  def initialize(pegs)
    if Code.valid_pegs?(pegs)
      @pegs = pegs.map(&:upcase)
    else
      raise "Does not contain valid pegs"
    end
  end

  def [](index)
    @pegs[index]
  end

  def length
    @pegs.length
  end

  def num_exact_matches(guess)
    # count = 0
    # default_pegs = POSSIBLE_PEGS.keys
    # guessed = Code.new(guess)
    
    # guess.each do |peg|
    #   if guess[peg] == @pegs[peg]
    #     count += 1
    #   end
    # end

    # count

    # Given Solution
    count = 0

    (0...guess.length).each do |peg|
      count += 1 if guess[peg] == @pegs[peg]
    end

    count
  end

  def num_near_matches(guess)
    # count = 0

    # @pegs.any? { |peg| count+= 1 if guess.include?(peg) }
    
    # count

    # Given Solution
    count = 0

    (0...guess.length).each do |peg|
      if guess[peg] != self[peg] && self.pegs.include?(guess[peg])
        count += 1
      end
    end

    count
  end

  def ==(input)
    input == self.pegs
  end
end
