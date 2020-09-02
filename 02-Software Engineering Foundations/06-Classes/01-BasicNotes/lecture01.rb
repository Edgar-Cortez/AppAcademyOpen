# Creating cats with a hash. 
# The hashes have the same keys (same structure)
# Limited and prone to error due to the fact we have to manually create each cat
cat_1 = {name: "Sennacy", color: "brown", age: 3}
cat_2 = {name: "Whiskers", color: "white", age: 5}
cat_3 = {name: "Garfield", color: "orange", age: 7}


# Creating a Cat Class
    # - keyword class
    # - name must begin with a Capital letter
    # - we can define methods within a class
        # - special method initialize that expects 3 parameters
        # - @ denotes an instance variable or attribute
class Cat
    def initialize(name, color, age)
        @name = name
        @color = color
        @age = age
    end
end

# Creating instances of Cat
cat_a = Cat.new("Sienna", "brown", 3)
cat_b = Cat.new("Frumpkin", "orange", 2)

# We see that they are unique 
p cat_a #<Cat:0x0000000002c8ec20 @name="Sienna", @color="brown", @age=3>
p cat_b #<Cat:0x0000000002c8eba8 @name="Frumpkin", @color="orange", @age=2>


# Getter Method
# Must call it on a Cat instance, not the Cat class
    # Correct: cat_c.name
    # Incorrect: Cat.name
# By convention, name them as the attribute they are returning
# These methods simply return values of an attribute, we cannot modify the @attribute value using a getter method
class Cat
    def initialize(name, color, age)
      @name = name
      @color = color
      @age = age
    end
  
    def name
      @name
    end

    def age
      @age
    end
end

cat_c = Cat.new("Ember", "red", 1)
p cat_c.name # "Ember"
p cat_c.age # "1"

cat_d = Cat.new("O'shea", "black", 7)
p cat_c.name # "O'shea"
p cat_c.age # "7"

# p cat_c.color # This will give an NoMethodError: undefined `color`


# Setter Methods
# Allows us to update @attribute values
# Valid Syntax:
    # cat_1.age=(42)
    # cat_1.age = 42

class Cat
  def initialize(name, color, age)
    @name = name
    @color = color
    @age = age
  end

  # getter
  def age
    @age
  end

  # setter
  def age=(number)
      @age = number
  end   
end

cat_d = Cat.new("Dookie", "brown", 3)
p cat_d #<Cat:0x0000000002cd77e0 @name="Dookie", @color="brown", @age=3>
# With no setter 
cat_d.age = 42  # NoMethodError: undefined method `age='
# With setter
p cat_d #<Cat:0x0000000002cd77e0 @name="Dookie", @color="brown", @age=42>


# Final Version
class Cat
    def initialize(name, color, age)
      @name = name
      @color = color
      @age = age
    end

    def purr
        if @age > 5
            puts @name.upcase + " goes purrrrrrrrr..."
        else
            puts "..."
        end
    end
end

cat_e = Cat.new("Rouge", "purple", 10)
cat_e.purr  # ROUGE goes purrrrrrrrr...
cat_f = Cat.new("Viridian", "green", 4)
cat_f.purr  # ...

