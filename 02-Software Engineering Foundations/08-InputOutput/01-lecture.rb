# Pet Hotel V1

# Project Structure
# pet_hotel.rb
#   ├── PetHotel Class
#   └── Cat Class

# This has an issue if the code gets larger. Grouping more classes into this file will no longer be viable
# Does not follow Seperation of Concerns
    # One file should focus on implementing one class
    # Classes should be able to stand on it's own without interaction from other classes


# pet_hotel.rb
class PetHotel
    def initialize(name)
        @name = name
        @guests = []
    end

    def check_in(guest)
        @guests << guest
    end
end

class Cat
    def initialize(name)
        @name = name
    end
end

hotel = PetHotel.new("Animal Inn")

cat_1 = Cat.new("Sennacy")
cat_2 = Cat.new("Whiskers")

hotel.check_in(cat_1)
hotel.check_in(cat_2)

p hotel

#<PetHotel:0x0000000002c8ef40 
#     @name="Animal Inn", 
#     @guests=[
        #<Cat:0x0000000002c8eec8 @name="Sennacy">, 
        #<Cat:0x0000000002c8ee78 @name="Whiskers">
#     ]
#>


# Pet Hotel V2

# Project Structure:
# project_root
#   ├── pet_hotel.rb
#   ├── cat.rb
#   └── other_animals
#       └── dog.rb

# require is method where gems are involved
# require_relative is a method we can use to specify a path to another ruby file.
    # relative path example: ./name_of_file.rb
    # A single dot (./) denotes the current location of our file

# project_root/cat.rb
class Cat
    def initialize(name)
      @name = name
    end
end

# project_root/other_animals/dog.rb
class Dog
    def initialize(name)
      @name = name
    end
end


# project_root/pet_hotel.rb

# Let's require the last two files, by specifying their path's relative to this pet_hotel.rb file
require_relative "./cat.rb"
require_relative "./other_animals/dog.rb"

class PetHotel
  def initialize(name)
    @name = name
    @guests = []
  end

  def check_in(guest)
    @guests << guest
  end
end

hotel = PetHotel.new("Animal Inn")

cat = Cat.new("Sennacy")
dog = Dog.new("Fido")

hotel.check_in(cat)
hotel.check_in(dog)

p hotel
# <PetHotel:0x007ffe7f01af60
#   @name="Animal Inn",
#   @guests=[
#     #<Cat:0x007ffe7f01aee8 @name="Sennacy">,
#     #<Dog:0x007ffe7f01ae98 @name="Fido">
#   ]
# >