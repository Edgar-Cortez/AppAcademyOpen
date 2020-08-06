# Write a method get_double_age that 
# takes in a hash and returns twice the "age" value of the hash.

# ---------- Steps ----------
# 	- Make a variable the stores the value of age of the hash
# 	- Multiply by 2
# 	- print 


# ---------- My Attempt ----------
def get_double_age(hash)
    double_age = hash["age"] * 2
    return double_age
end

# ---------- Their Solution ----------
# def get_double_age(hash)
    # return hash["age"] * 2
# end

#  ---------- Tests ----------
puts get_double_age({"name"=>"App Academy", "age"=>5}) # => 10
puts get_double_age({"name"=>"Ruby", "age"=>23})       # => 46
