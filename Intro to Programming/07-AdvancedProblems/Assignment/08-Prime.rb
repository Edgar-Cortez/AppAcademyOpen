# Write a method prime? that takes in a number and returns a boolean,
#  indicating whether the number is prime. A prime number is only divisible by 1 and itself.

# ---------- Steps ----------
# 	- if any number less that two, automatically return false
# 	- using a range starting from two to the number given
# 	    - .each check if the number is divisible by the iteration == 0 
# 	    - if it passes return false 
#   - return true if it doesn't pass the previous checks


# ---------- My Attempt ----------



# ---------- Their Solution ----------
def prime?(num)
    if num < 2
      return false
    end
  
    (2...num).each do |factor|
      if num % factor == 0
        return false
      end
    end
  
    return true
end

#  ---------- Tests ----------
puts prime?(2)  #=> true
puts prime?(5)  #=> true
puts prime?(11) #=> true
puts prime?(4)  #=> false
puts prime?(9)  #=> false
puts prime?(-5) #=> false