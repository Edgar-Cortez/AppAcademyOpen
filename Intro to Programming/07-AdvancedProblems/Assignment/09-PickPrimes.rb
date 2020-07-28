# Write a method pick_primes that takes in an array of numbers
# and returns a new array containing only the prime numbers.

# ---------- Steps ----------
# 	- create helper method to check if number given is a prime
# 	- in pick_primes: create an empty array
# 	- iterate through given array and call the helper method on each iteration for prime
#       - True: then shovel into empty array
#   - return new array


# ---------- My Attempt ----------
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

def pick_primes(numbers)
	primes = []
  	
  	numbers.each do |num|
    	if (prime?(num))
        	primes << num
        end
    end
  return primes
end


# ---------- Their Solution ----------
# def pick_primes(numbers)
#     return numbers.select { |num| prime?(num)}
# end

# def prime?(num)
#     if num < 2
#         return false
#     end

#     (2...num).each do |factor|
#         if num % factor == 0
#         return false
#         end
#     end

#     return true
# end

#  ---------- Tests ----------
print pick_primes([2, 3, 4, 5, 6]) #=> [2, 3, 5]
puts
print pick_primes([101, 20, 103, 2017]) #=> [101, 103, 2017]
puts
