# Write a method most_vowels that takes in a sentence string
# and returns the word of the sentence that contains the most vowels.

# ---------- Steps ----------
# 	- create a helper method to count the vowels
# 	- in most_vowels method split the string into an array of words
# 	- create an empty hash to hold the word(key) and the amount of vowels(values)
#   - .each the array of words and create a key and value for each word
#       - calling the helper function to get the vowel count
#   - sort the hash by the values
#   - return the key of the object with the highest vowel count


# ---------- My Attempt ----------
# def most_vowels(sentence)
# 	arr = sentence.split(" ")
#   	vowels = ["a", "e", "i", "o", "u"]
#   	# return arr
  	
#   	arr.map
# end


# ---------- Their Solution ----------
def most_vowels(sentence)
    counts = {}
  
    sentence.split.each do |word|
      counts[word] = vowel_count(word)
    end
  
    sorted = counts.sort_by { |k,v| v}
    return sorted[-1][0]
  end
  
  def vowel_count(word)
    count = 0
    vowels = "aeiou"
  
    word.each_char do |char|
      if vowels.include?(char)
        count += 1
      end
    end
  
    return count
end

#  ---------- Tests ----------
print most_vowels("what a wonderful life") #=> "wonderful"