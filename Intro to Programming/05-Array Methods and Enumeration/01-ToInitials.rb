# Write a method to_initials that takes in a person's name string and returns a
# string representing their initials. 

# ---------- Steps ----------
# 	- create an empty array
# 	- split the paramater string and insert into empty
# 	- get the value of index 0 of each element
# 	- return the values in a string


# ---------- My Attempt ----------
# I was on the right track, I knew I needed to split the string
# I had to figure out how to get the value of index zero for both elements
# Then put those values into a string
def to_initials(name)
	initials = []

	name.split(" ")

end


# ---------- Their Solution ----------
# def to_initials(name)
#   parts = name.split(" ")
#   initials = ""
#   parts.each { |part| initials += part[0] }
#   return initials
# end

#  ---------- Tests ----------
puts to_initials("Kelvin Bridges")      # => "KB"
puts to_initials("Michaela Yamamoto")   # => "MY"
puts to_initials("Mary La Grange")      # => "MLG"
