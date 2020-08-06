# 

# ---------- Steps ----------
# 	- check if length is == 0 and return empty array
# 	- check if length is == 1 and return [1]
# 	- create a variable that hold the first two elements of the fib sequence [1, 1]
#   - while the sequence length is less than the length given:
#       - create a variable to hold last element of the sequence seq[-1]
#       - create a variable to hold second_to_last element of the sequence seq[-2]
#       - create a variable that holds the addition of last and second_to_last element
#       - shovel the result to the sequence array
#   - return sequence


# ---------- My Attempt ----------
# def fibonacci(length)
# 	arr = []
  	
#   	while arr.length < length
#     	if arr.length < 1
#         	arr[0] = 1
#           	arr << arr[0]
#         end
#       	arr << 1
#     end
#   	return arr
# end


# ---------- Their Solution ----------
def fibonacci(length)
    if length == 0
      return []
    elsif length == 1
      return [1]
    end
  
    seq = [1, 1]
  
    while seq.length < length
      last = seq[-1]
      second_to_last = seq[-2]
      print seq
      puts
      next_ele = last + second_to_last
      puts next_ele
      puts "-----"
      seq << next_ele
    end
  
    return seq
  end

#  ---------- Tests ----------
print fibonacci(0) # => []
puts
print fibonacci(1) # => [1]
puts
print fibonacci(6) # => [1, 1, 2, 3, 5, 8]
puts
print fibonacci(8) # => [1, 1, 2, 3, 5, 8, 13, 21]
puts
