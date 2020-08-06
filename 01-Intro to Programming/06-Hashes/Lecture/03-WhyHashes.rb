# good array data
animals = ["dog", "cat", "fish", "bird"]

# bad array data
# each element has no meaning behind and you have to access each element by index
person =["Edgar", 100, "Dallas", "sushi", true]
puts
puts person

# person would be better as a hash
# we are trying describe many facets of a single thing use a hash
# we can use key/value pairs to access specific info of the hash object
better_person = {
    "name" => "Edgar",
    "age" => 100,
    "city" => "Dallas",
    "favoriteFood" => "Sushi",
    "isCool" => false,
}

puts
puts better_person