# Instance Methods vs Class Methods

# Instance Methods
# Dog#speak is an instance method. We can only call it on a Dog instance
# instance methods depends on the attributes/@variables of an instance
class Dog
    def initialize(name, bark)
        @name = name
        @bark = bark
    end

    def speak
        "#{@name} says #{@bark}"
    end
end

my_dog = Dog.new("Fido", "woof")
p my_dog.speak            # "Fido says woof"

other_dog = Dog.new("Doge", "much bork")
p other_dog.speak         # "Doge says much bork"


# Class Methods
# a method that is called directly on the class
# Syntax: self#method_name
# Cannot refer to any instance attributes like @name or @bark
class Wolf
    def initialize(name, bark)
        @name = name
        @bark = bark
    end

    def self.growl
        "Grrrrrr..."
    end
end

p Wolf.growl            # Grrrrrr...


# Another Class Method example
# Code inside the method does not pertain to a single instance of Dog, meaning it doesn't refer to instance variables of @name or @bark

class Dog
    def initialize(name, bark)
      @name = name
      @bark = bark
    end
  
    def self.whos_louder(dog_1, dog_2)
      if dog_1.bark.length > dog_2.bark.length
        return dog_1.name
      elsif dog_1.bark.length < dog_2.bark.length
        return dog_2.name
      else
        return nil
      end
    end
  
    def name
      @name
    end
  
    def bark
      @bark
    end
end
  
d1 = Dog.new("Fido", "woof")
d2 = Dog.new("Doge", "much bork")
p Dog.whos_louder(d1, d2)          # "Doge"