# Write a method sum_nums(max) that takes in a number max and returns the sum of all numbers from 1 up to and including max.

# ---------- Steps ----------
# 	- I need a variable to hold the sum of max
# 	- I need a variable to hold the amount of times we will iterate through the loop
# 	- I need to make sure that the value of i at the end of the loop gets updated at the end 
# 	- 


# ---------- My Attempt ----------
# Having issues with this loop. I managed to get 1/2 tests correct. The code
# in the while loop needs rethinking. Plan on paper!
def sum_nums(max)
	sum = 0
	i = 1
	
  	while i <= max
  		sum = max + (max + 1)
      	sum += 1
      	i += 1
    end
  	puts max
	return sum
end


# ---------- Their Solution ----------
# 
# def sum_nums(max)
#   sum = 0

#   i = 1
#   while i <= max
#     sum += i

#     i += 1
#   end

#   return sum
# end

#  ---------- Tests ----------
puts sum_nums(4) # => 10, because 1 + 2 + 3 + 4 = 10
puts sum_nums(5) # => 15
