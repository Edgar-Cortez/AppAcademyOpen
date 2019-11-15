# Write a method pig_latin_word that takes in a word string and translates the
# word into pig latin. 

# ---------- Steps ----------
# 	- Create a string that holds all the vowels to check from
# 	- Check letter at index 0
# 		- If vowel, add 'yay' to the end

# 		- Use .include? and .with_index
# 		- else if no vowel at index 0, iterate through until you find the first vowel
# 			- grab character before the vowel
# 			- grab character after the vowel and include the vowel
# 	- Build string and add "ay"

# Pig latin translation uses the following rules:
# - for words that start with a vowel, add 'yay' to the end
# - for words that start with a nonvowel, move all letters before the first vowel to the end of the word and add 'ay'

# ---------- My Attempt ----------
# This is as far as I got

# def pig_latin_word(word)
# 	translated = []
# 	vowels = "aeiou"
# 	convert = word.split(" ")

# 	convert.each_char do |char|
# 		if !vowels.include?(char)
# 	  		return false
# 		end
# 	end

# end


# ---------- Their Solution ----------
def pig_latin_word(word)
  vowels = "aeiou"

  # First test case
  # if the word starts with the vowel, then add yay
  if vowels.include?(word[0])
  	return word + "yay"
  end

  # Second test case
  # Iterate through the string and the index until you find the first vowel
  word.each_char.with_index do |char, i|
  	puts char

  	# We found first vowel in the string
  	if vowels.include?(char)
  		# Grabs the characters before the first vowel
  		before_vowel = word[0...i]
  		# Grabs the character after the first vowel (includes it as well)
  		after_vowel = word[i..-1]

  		puts before_vowel
  		puts after_vowel
  		return after_vowel + before_vowel + "ay"
  	end
  end
end

#  ---------- Tests ----------
puts pig_latin_word("apple")   # => "appleyay"
puts pig_latin_word("eat")     # => "eatyay"
puts pig_latin_word("banana")  # => "ananabay"
puts pig_latin_word("trash")   # => "ashtray"
