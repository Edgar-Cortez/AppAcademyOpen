# Write a method array_translate that takes in an array whose elements
# alternate between words and numbers. The method should return a string where
# each word is repeated the number of times that immediately follows in the
# array.

# ---------- Steps ----------
# 	- create an empty array for odd elements
# 	- create an empty array for even elements
# 	- create an empty array for the multiplied results
# 	- take the matching element at the current index and multiply them and push that result into the empty array
# 	- convert the new array into a string

# ---------- Hint ---------------- 
# Essentially this is what I am needing to do
# 	original array ["red", 3, "blue", 1]

	# odd_array = ["red", "blue"]
	# even_array = [3, 1]
	# result_array = []
  	
 #  	# repeat the loop by the length of the array
 #  	temp << odd_array[i] * even_array[i]

 #  	print temp		# Prints redredred

# -------------------------------- 

# ---------- My Attempt ----------
def array_translate(array)

	odd_array = []
	even_array = []
	result_array = []

	max = array.length
	i = 0
	while i < max
      	temp  = array[i]
		if i % 2 != 1
          # fill out the odd array
        	odd_array << temp
        else
        	even_array << temp
        end
      	i += 1
    end
   	
	puts
    print odd_array
	puts
  	print even_array

# ------------------------ I Left Off Here ------------------------- 
# I managed to get the while loop to put each element into the odd and even array
# Now I have to get each element at each index and multiply them
# Then shovel them into the result_array
  j = 0
  while j < odd_array.length
     temp2 = odd_array[j] * even_array[j]   
     result_array << temp2.join("")
     j += 1
  end

  puts
  return result_array

end


# ---------- Their Solution ----------
# def array_translate(array)

# Create an empty string because that is what we want returned
#   str = ""

# Use a while loop to traverse the array
#   i = 0
#   while i < array.length
#     ele = array[i]            # grabs odd element
#     num = array[i + 1]        # grabs even element
# ---------------------------------------------------------
# These do the same thing
    # new_str = ele * num       # concatenates using string arithmetic
    # num.times { str += ele }  # concatenates using a enumerable method
# ---------------------------------------------------------
#     i += 2                    # you make sure you jump by two through the array
#   end

#   return str
# end


#  ---------- Tests ----------
print array_translate(["Cat", 2, "Dog", 3, "Mouse", 1]); # => "CatCatDogDogDogMouse"
puts

print array_translate(["red", 3, "blue", 1]); # => "redredredblue"
puts
