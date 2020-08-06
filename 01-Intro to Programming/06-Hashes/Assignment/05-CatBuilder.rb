# Write a method cat_builder that takes in a name, color, and age.
# The method should return a hash representing a cat with those values.

# ---------- Steps ----------
# 	- create hash with keys
# 	- add parameters as values to hash
# 	- return


# ---------- My Attempt ----------
def cat_builder(name_str, color_str, age_num)
    hash = { "name" => name_str, "color" => color_str, "age" => age_num }
    return hash
end


# ---------- Their Solution ----------
# def cat_builder(name_str, color_str, age_num)
#     return { "name"=>name_str, "color"=>color_str, "age"=>age_num }
# end

#  ---------- Tests ----------
print cat_builder("Whiskers", "orange", 3) #=> {"name"=>"Whiskers", "color"=>"orange", "age"=>3}
puts

print cat_builder("Salem", "black", 100) #=> {"name"=>"Salem", "color"=>"black", "age"=>100}
puts
