# Write a method prime_factors that takes in a number
# and returns an array containing all of the prime factors of the
# given number.

# ---------- Steps ----------
# 	- create helper function to check if number is prime
# 	- in prime_factor method: create empty array
# 	- iterate starting from 1 to the given number:
#       - check if the number is divisible by iteration && is a prime number using helper method
#   - True: shovel number into empty array
#   - return array


# ---------- My Attempt ----------
# def prime_factors(num)
# 	factors = []
#   	(2...num).each do |factor|
#     	if num % factor == 0
#         	factors << factor
#         end
#     end
#   	return factors
# end



# ---------- Their Solution ----------
def prime_factors(num)
    prime_facts = []
  
    (1..num).each do |i|
      if num % i == 0 && prime?(i)
        prime_facts << i
      end
    end
  
    return prime_facts
  end
  
  def prime?(n)
    if n < 2
      return false
    end
  
    (2...n).each do |i|
      if n % i == 0
        return false
      end
    end
  
    return true
  end

#  ---------- Tests ----------
print prime_factors(24) #=> [2, 3]
puts
print prime_factors(60) #=> [2, 3, 5]
puts