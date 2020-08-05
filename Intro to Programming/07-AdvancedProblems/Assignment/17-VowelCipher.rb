# 

# ---------- Steps ----------
# 	- create a variable to hold the vowels in a string
# 	- split the given string and .map by each char
# 	    - check if char is a vowel using .include?(char) 
# 	        - true: 
#               - create a variable to hold the vowels index(char) 
#               - create a variable to hold the new index       add 1 to the old index and % by vowels.length 
#               - get the value of the new value by the new index from previous step 
# 	    - else char 
# 	- assign this to a variable and return


# ---------- My Attempt ----------
# def vowel_cipher(string)
# 	vowels = "aeiou"
#   	new_str = ""
  	
#   	string.each_char do |char|
#     	vowel = vowels.index(char)
#       	next_vowel = vowels[char + 1]
#       	print next_vowel
#       	# new_vowel = vowel[next_vowel]
#       	# print new_vowel
#     end
  
#   	return new_str
# end


# ---------- Their 1st Solution ----------
def vowel_cipher(string)
    vowels = "aeiou"
  
    new_chars = string.split("").map do |char|
      if vowels.include?(char)
        old_idx = vowels.index(char)
        new_idx = old_idx + 1
        vowels[new_idx % vowels.length]
      else
        char
      end
    end
  
    return new_chars.join("")
 end

#  ---------- Their 2nd Solution ----------
# def vowel_cipher2(string)
#     change = {
#         "a" => "e",
#         "e" => "i",
#         "i" => "o",
#         "o" => "u",
#         "u" => "a"
#     }

#     vowels = "aeiou"

#     new_arr = string.split("").map do |char|
#         if vowels.include?(char)
#             change[char]
#         else
#             char
#         end
#     end

#     return new_arr.join("")
# end
#  ---------- Tests ----------
puts vowel_cipher("bootcamp") #=> buutcemp
puts vowel_cipher("paper cup") #=> pepir cap
