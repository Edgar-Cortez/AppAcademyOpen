# Write a method goodbye(name) that takes in a string name and returns a string saying bye to that name. See the example calls.


# ---------- Steps ----------
# 	- Take in a string
# 	- Append "Bye " to the string the beginning of the string and "." to the end of the string
# 	- Return the string



# ---------- My Attempt ----------
def goodbye(name)
	str = "Bye " + name + "."
         return str
end



# ---------- Their Solution ----------
# They did it all in one line which is better.
# def goodbye(name)
#   return "Bye " + name + "."	 
# end


#  ---------- Tests ----------
puts goodbye("Daniel")   # => "Bye Daniel."
puts goodbye("Mark")     # => "Bye Mark."
puts goodbye("Beyonce")  # => "Bye Beyonce."

