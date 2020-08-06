# Hash Methods
# .length
# .has_key?(k)
# .has_value?(v)
# .keys
# .values

dog = {
    "name" => "Fido",
    "color" => "Beige",
    "age" => "3",
    "isHungry" => true,
    "prey" => ["cat", "rabbit", "squirrel", "mouse"]
}

# dog["location"] = ["Dallas"]
# print dog["prey"] << "frog"
# puts
# puts
# puts dog

print dog.length
puts
print dog.has_key?("name")
puts
print dog.has_value?("Beighe")
puts
print dog.keys[4]
puts
print dog.values