# Write a method whisper_words that takes in an array of words 
# and returns a new array containing a whispered version of each word.
# See the examples. Solve this using map :).

# ---------- Steps ----------
# 	- create a new array
# 	- map through given array
# 	- downcase and append "..." each word
#   - return the new array


# ---------- My Attempt ----------
def whisper_words(words)
	whisper = words.map { |word| word.downcase + "..."}
  	return whisper
end


# ---------- Their Solution ----------
# def whisper_words(words)
#   return words.map { |word| word.downcase + "..." }
# end

#  ---------- Tests ----------
print whisper_words(["KEEP", "The", "NOISE", "down"]) # => ["keep...", "the...", "noise...", "down..."]
puts