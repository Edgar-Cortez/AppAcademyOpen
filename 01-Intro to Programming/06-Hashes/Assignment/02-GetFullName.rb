# Write a method get_full_name that takes in a hash containing
# a first, last, and title. The method should return a string representing 
# the hash's full name

# ---------- Steps ----------
# 	- Store each key in a variabl
# 	- string interpolation of all variable to compose final string
# 	- print


# ---------- My Attempt ----------
def get_full_name(hash)
    first = hash["first"]
    last = hash["last"]
    title = hash["title"]
    full_name = "#{first} #{last}, the #{title}"

    return full_name
end


# ---------- Their Solution ----------
# def get_full_name(hash)
#     return hash["first"] + " " + hash["last"] + ", the " + hash["title"]
# end

#  ---------- Tests ----------
hash1 = {"first"=>"Michael", "last"=>"Jordan", "title"=> "GOAT"}
puts get_full_name(hash1) # => "Michael Jordan, the GOAT"

hash2 = {"first"=>"Fido", "last"=>"McDog", "title"=> "Loyal"}
puts get_full_name(hash2) # => "Fido McDog, the Loyal"
