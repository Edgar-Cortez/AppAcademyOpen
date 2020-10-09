require_relative "code"

class Mastermind
  def initialize(length)
      @secret_code = Code.random(length)
  end

  def print_matches(input)
    # print @secret_code.num_exact_matches(input)
    # print @secret_code.num_near_matches(input)

    # Given Solution
    puts "exact matches: #{@secret_code.num_exact_matches(input)}"
    puts "near matches: #{@secret_code.num_near_matches(input)}"
  end

  def ask_user_for_guess
    # print "Enter a code: "
    # input = gets.chomp

    # converted = Code.from_string(input)
    # print print_matches(input)

    # return converted == @secret_code

    # Given Solution
    print "Enter a code: "
    guess = Code.from_string(gets.chomp)
    self.print_matches(guess)
    @secret_code == guess
  end
end
