# Write a method frequent_letters that takes in a string and returns an array
# containing the characters that appeared more than twice in the string.

# ---------- Steps ----------
# 	- create empty hash. initialize values to 0
# 	- loop through string and increment each letters value
# 	- create array from keys with a value of more than 1
#   - return array


# ---------- My Attempt ----------
# def frequent_letters(string)
#     count = Hash.new(0)
#     letters = []
  
#   	string.each_char { |char| 
#      	count[char] += 1    	
#     }
# 	print count
  
#   	count.each do  |k, v|
#   		if (count[k] > 2)
#   			letters << count[k]
#   		end
#     end
  
#     return letters
# end


# ---------- Their Solution ----------
def frequent_letters(string)
    count = Hash.new(0)
    string.each_char { |char| count[char] += 1 }
  
    frequents = []
    count.each do |char, num|
      if num > 2
        frequents << char
      end
    end
    return frequents
  end
  

#  ---------- Tests ----------
print frequent_letters('mississippi') #=> ["i", "s"]
puts
print frequent_letters('bootcamp') #=> []
puts
