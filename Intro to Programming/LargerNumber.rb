# Write a method larger_number(num1, num2) that takes in two numbers and returns the larger of the two numbers.


# ---------- Steps ----------
# 	- Check if num1 is greater than num2
# 	- Return num1 if true
# 	- Else return num2



# ---------- My Attempt ----------
def larger_number(num1, num2)
	if num1 > num2
      return num1
    else
      return num2
    end
end


# ---------- Their Solution ----------
# def average_of_three(num1, num2, num3)
#   sum = num1 + num2 + num3
#   average = sum / 3.0
#   return average
# end

#  ---------- Tests ----------
puts larger_number(42, 28)   # => 42
puts larger_number(99, 100)  # => 100
