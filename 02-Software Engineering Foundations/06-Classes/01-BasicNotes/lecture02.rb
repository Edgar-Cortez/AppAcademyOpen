# Class Variables
# an @instance_variable will be a distinct variable in each instance of a class; changing the variable will only effect that one instance
# @@variables are assigned right inside the class but not inside #initialize
# any car instance will be able to refer to these shared @@variables.

class Car 
    @@num_wheels = 4

    def initialize(color)
        @color = color
    end

    # getter for @color instance variable
    def color
        @color
    end

    # getter for @@num_wheels class variable
    def num_wheels
        @@num_wheels
    end
end

car_1 = Car.new("red")
p car_1.num_wheels    # 4

car_2 = Car.new("black")
p car_2.num_wheels    # 4



# Updating @@variables
# a @@class_variable will be shared among all instances of a class; changing the variable will effect all instances because all instances of the class
# You must be careful because any new instances that are created will be updated with the new value of a @@variable.
# 
class Car
    @@num_wheels = 4

    def self.upgrade_to_flying_cars
        @@num_wheels = 0
    end

    def initialize(color)
        @color = color
    end

    def num_wheels
        @@num_wheels
    end
end

car_3 = Car.new("red")
car_4 = Car.new("black")

p car_3.num_wheels    # 4
p car_4.num_wheels    # 4

Car.upgrade_to_flying_cars

p car_3.num_wheels    # 0
p car_4.num_wheels    # 0

car_5 = Car.new("silver")
p car_5.num_wheels    # 0


# Class Constants
# a CLASS_CONSTANT will be shared among all instances of a class, but cannot be changed
# Using class constant to provide saftey measures from class variables being changed.
# Syntax: constant constants must be capitalized
class Car
    NUM_WHEELS = 4
  
    def self.upgrade_to_flying_cars
      NUM_WHEELS = 0    # SyntaxError: dynamic constant assignment
    end
  
    def initialize(color)
      @color = color
    end
  
    def num_wheels
      NUM_WHEELS
    end
end

car_6 = Car.new("red")
car_7 = Car.new("black")

p car_6.num_wheels    # 4
p car_7.num_wheels    # 4

Car.upgrade_to_flying_cars