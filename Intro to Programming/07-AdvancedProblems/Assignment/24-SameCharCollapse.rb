# 

# ---------- Steps ----------
# 	- 
# 	- 
# 	- 


# ---------- My Attempt ----------
def same_char_collapse(str)
	chars = check_string(str)
  	new_str = []
  	
  	chars.each do |key, value|
    	# print chars[key]
      	# print key
      	if chars[key] % 2 == 1
      		new_str << key
      	end
    end
  
  	return new_str.join("")
end

def check_string(str)
	hash = Hash.new(0)
  	
  	str.each_char do |char|
    	hash[char] += 1
    end
  
  	return hash
end

# p check_string("zzzxaaxy") # => {"z"=>3, "x"=>2, "a"=>2, "y"=>1}


# ---------- Their Solution ----------
# def same_char_collapse(str)
#     reducible = true
  
#     while reducible
#       chars = str.split("")
#       reducible = false
  
#       chars.each.with_index do |char, i|
#         if chars[i] == chars[i + 1]
#           chars[i] = ""
#           chars[i + 1] = ""
#           reducible = true
#         end
#       end
  
#       str = chars.join("")
#     end
  
#     return str
#   end

#  ---------- Tests ----------
puts same_char_collapse("zzzxaaxy")   #=> "zy"
# because zzzxaaxy -> zxaaxy -> zxxy -> zy


puts same_char_collapse("uqrssrqvtt") #=> "uv"
# because uqrssrqvtt -> uqrrqvtt -> uqqvtt -> uvtt -> uv
