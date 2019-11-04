# Write a method factorial(num) that takes in a number num and returns the product of all numbers from 1 up to and including num.

# ---------- Steps ----------
# 	- I need a variable to hold the result of the product(multiplication)
# 	- I need a variable to hold my iteration
# 	- I need to make sure my loop is a <=  
# 	- I need to make sure my result includes the final iteration result


# ---------- My Attempt ----------

def factorial(num)
  product = 1

  i = 1
  while i <= num
    product *= i

    puts i
    i += 1
  end

  return product
end


# ---------- Their Solution ----------


#  ---------- Tests ----------
puts factorial(3) # => 6, because 1 * 2 * 3 = 6
puts factorial(5) # => 120, because 1 * 2 * 3 * 4 * 5 = 120
