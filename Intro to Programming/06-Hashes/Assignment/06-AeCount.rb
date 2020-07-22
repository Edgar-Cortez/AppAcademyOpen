# Write a method ae_count that takes in a string and returns a hash containing 
# the number of a's and e's in the string. Assume the string contains only lowercase characters.

# ---------- Steps ----------
# 	- create hash with two keys and with values of 0
# 	- iterate over strings
# 	- check if the current index equals a/e 
# 	    - True: add 1 to corresponding key in hash
#   - return hash


# ---------- My Attempt ----------
def ae_count(str)
    count = {"a"=> 0, "e" => 0}
    puts count
    str.each_char do |char|
        if (char == "a" || char == "e")
            count[char] += 1
        end        
    end
    return count
end


# ---------- Their Solution ----------
def ae_count(str)
    count = {"a"=>0, "e"=>0}
  
    str.each_char do |char|
      if (char == "a" || char == "e")
        count[char] += 1
      end
    end
  
    return count
end

#  ---------- Tests ----------
puts ae_count("everyone can program") #=> {"a"=>2, "e"=>3}
puts ae_count("keyboard") #=> {"a"=>1, "e"=>1}
