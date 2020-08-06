# 

# ---------- Steps ----------
# 	- check if length of each word is the same
#       - False if do not match
# 	- Iterate through first word using .each_char by char
# 	    -   if second word includes the char return True
#   - After checking if not found return False 


# ---------- My Attempt ----------
def anagrams?(word1, word2)
    if word1.length != word2.length
    	return false
    end

	word1.each_char do |char|
    	if word2.include?(char)
        	return true
        end
    end
  	return false  
end


# ---------- Their Solution ----------
# def anagrams?(word1, word2)
#   return char_count(word1) == char_count(word2)
# end

# def char_count(word)
#   count = Hash.new(0)
#   word.each_char { |char| count[char] += 1 }
#   return count
# end

# hash1 = char_count("cat")   
# hash2 = char_count("act")   
# puts hash1                  # => {"c"=> 1, "a"=> 1, "t"=> 1}
# puts hash1                  # => {"a"=> 1, "c"=> 1, "t"=> 1}
# puts hash1 == hash2         # True

#  ---------- Tests ----------
puts anagrams?("cat", "act")          #=> true
puts anagrams?("restful", "fluster")  #=> true
puts anagrams?("cat", "dog")          #=> false
puts anagrams?("boot", "bootcamp")    #=> false
