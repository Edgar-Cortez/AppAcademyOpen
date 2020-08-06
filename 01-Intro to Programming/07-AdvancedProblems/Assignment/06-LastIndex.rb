# Write a method last_index that takes in a string and a character. 
# The method should return the last index where the character can be found in the string.

# ---------- Steps ----------
# 	- split given string into array
# 	- create empty array
# 	- map wit index the split string
#       - if the letter and the given char match push the index into empty array
#   - return last index of the filled array


# ---------- My Attempt ----------
def last_index(str, char)
	arr = str.split("")
  	arr2 = []
  	# print arr
  	arr.map.with_index do |letter, i|
    	if letter == char
        	arr2 << i
        end
    end
  	puts
  	return arr2[-1]
end


# ---------- Their Solution ----------
# def last_index(str, char)
#     i = str.length - 1
#     while i >= 0
#       if str[i] == char
#         return i
#       end
#       i -= 1
#     end
# end

#  ---------- Tests ----------
puts last_index("abca", "a")       #=> 3
puts last_index("mississipi", "i") #=> 9
puts last_index("octagon", "o")    #=> 5
puts last_index("programming", "m")#=> 7