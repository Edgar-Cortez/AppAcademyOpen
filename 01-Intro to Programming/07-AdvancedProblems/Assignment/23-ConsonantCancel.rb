# 

# ---------- Steps ----------
# 	- Create helper method to deal with checking for vowels of given string
# 	    - Create a variable to hold the vowels in a string 
# 	    - iterate through given string using .each_char and .with_index 
# 	        - If the character matches anything from vowels variable return word[i..-1] (meaning return the string starting from where it matches a vowel to the end) 
# 	- Original method: split the sentence given
# 	- map the array of strings and use helper method to check each string. SET this as a variable
# 	- return the newly mapped array of words and .join to convert to a string


# ---------- My Attempt ----------
# def consonant_cancel(sentence)
 	
#     words = sentence.split(" ")
#   # print words
  

#     # return words.join(" ")
    
# end

# def check_words(arr)
#     vowels = "aeiou"
#   arr.each_with_index do | ele, i |
#       if ele.include?(vowels)
#           return arr[ele][i]
#       end
#   end
# end


# ---------- Their Solution ----------
def consonant_cancel(sentence)
    words = sentence.split
    new_words = words.map { |word| remove_first_consonant(word) }
    return new_words.join(" ")
end
  
def remove_first_consonant(word)
    vowels = "aeiou"
    word.each_char.with_index do |char, i|
      if vowels.include?(char)
        return word[i..-1]
      end
    end
end

#  ---------- Tests ----------
puts consonant_cancel("down the rabbit hole") #=> "own e abbit ole"
puts consonant_cancel("writing code is challenging") #=> "iting ode is allenging"
