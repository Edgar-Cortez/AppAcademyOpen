# 

# ---------- Steps ----------
# 	- create a variable count and set to 0
# 	- iterate through the given string with .each_char and .with_index by character and i
# 	    - if the characer == string[i + 1] 
# 	    -  increment count by 1
# 	- return count


# ---------- My Attempt ----------
# def double_letter_count(string)
# 	string.each_char.with_index do |char, i|
#     	test = [char][i]
#       	news = string[test]
#       	print news
#     end
  	
# end


# ---------- Their Solution ----------
def double_letter_count(string)
    count = 0
  
    string.each_char.with_index do |char, i|
      if string[i] == string[i + 1]
        count += 1
      end
    end
  
    return count
end

#  ---------- Tests ----------
puts double_letter_count("the jeep rolled down the hill") #=> 3
puts double_letter_count("bootcamp") #=> 1