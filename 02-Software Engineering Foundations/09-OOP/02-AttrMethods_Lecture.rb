# Attribute Methods
# Don't just take all your class's attributes and pass them to attr_accessor. 
# Consider if a user of the class needs to manipulate that data with a raw getter or setter.
# Or more importantly consider if it is safe for a user to do so. Only use getters and setters for
# what you want to expose in your classes.

# V1 - What I've been doing for getters and setters
class Dog
    def initialize(name, age, favorite_food)
      @name = name
      @age = age
      @favorite_food = favorite_food
    end
  
    # getters
    def name
      @name
    end
  
    def age
      @age
    end
  
    # setters
    def name=(new_name)
      @name = new_name
    end
  
    def age=(new_age)
      @age = new_age
    end
  end


  # V2 - creating getters automatically using     attr_reader
  class Dog
    # attr_reader will define #name and #age getters for us
    attr_reader(:name, :age)
    # or
    # attr_reader :name, :age
  
    def initialize(name, age, favorite_food)
      @name = name
      @age = age
      @favorite_food = favorite_food
    end
  end
  
  dog = Dog.new("Fido", 3, "pizza")
  dog.name
  dog.age
  dog.favorite_food # NoMethodError: undefined method `favorite_food', because we didn't pass it to attr_reader


  # V3 - Create setters automatically using     attr_writer
  class Dog
    # attr_writer will define #name= and #age= setters for us
    attr_writer :name, :age
  
    def initialize(name, age, favorite_food)
      @name = name
      @age = age
      @favorite_food = favorite_food
    end
  end
  
  dog = Dog.new("Fido", 3, "pizza")
  
  dog.name = "Spot"
  dog.age += 1
  
  p dog #<Dog:0x007fd87f1144a0 @age=4, @favorite_food="pizza", @name="Spot">
  
  dog.favorite_food = "calzone" # NoMethodError: undefined method `favorite_food=', because we did't pass it to attr_writer


  # V4 - Create both getters and setters automatically    attr_accessor
  class Dog
    # attr_accessor will define #name, #name=, #age, #age= methods for us
    attr_accessor :name, :age
  
    def initialize(name, age, favorite_food)
      @name = name
      @age = age
      @favorite_food = favorite_food
    end
  end
  
  dog = Dog.new("Fido", 3, "pizza")
  
  # Let's use the setter and getter for name!
  dog.name = "Spot"
  p dog.name          # "Spot"