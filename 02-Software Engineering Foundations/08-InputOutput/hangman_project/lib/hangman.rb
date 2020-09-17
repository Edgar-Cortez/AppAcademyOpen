class Hangman
  DICTIONARY = ["cat", "dog", "bootcamp", "pizza"]

  def self.random_word
    DICTIONARY.sample
  end

  def initialize
    @secret_word = Hangman.random_word
    @guess_word = Array.new(@secret_word.length, "_")
    @attempted_chars = []
    @remaining_incorrect_guesses = 5
  end
  
  def guess_word
    @guess_word
  end

  def attempted_chars
    @attempted_chars
  end

  def remaining_incorrect_guesses
    @remaining_incorrect_guesses
  end

  def already_attempted?(char)
    # if attempted_chars.include?(char)
    #   true
    # else
    #   false
    # end

    # Given Solution
    @attempted_chars.include?(char)
  end

  def get_matching_indices(char)
    # Given Solution
    matching_indices = []

    @secret_word.each_char.with_index do |secret_char, i|
      if char == secret_char
        matching_indices << i    
      end
    end

    matching_indices
  end
  

  def fill_indices(char, indices)
    indices.each do |index|
      @guess_word[index] = char
    end
  end
end


