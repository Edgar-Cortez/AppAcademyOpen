# Hash enumerables
# .each
# .each_key
# .each_value

pizza = {
    "style" => "New York",
    "slices" => "8",
    "diameter" => "15 inches",
    "toppings" => ["mushrooms", "beef"],
    "is_tasty" => true,
}

pizza.each do |k, v|
    puts k
    puts v
    puts "__________"
end

# pizza.each_key do |k|
#     puts k
# end

# pizza.each_value do |v|
#     puts v
# end