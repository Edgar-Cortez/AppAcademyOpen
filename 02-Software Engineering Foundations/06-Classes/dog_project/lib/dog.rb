require "byebug"

class Dog
    def initialize(name, breed, age, bark, favorite_foods)
        @name = name
        @breed = breed
        @age = age
        @bark = bark
        @favorite_foods = favorite_foods
    end

    # getters
    def name
        @name
    end

    def breed
        @breed
    end

    def age
        @age
    end

    def bark
        if @age > 3
            @bark.upcase
        else
            @bark.downcase
        end
    end
    
    def favorite_foods
        @favorite_foods
    end

    def favorite_food?(string)
        new_food = string.capitalize
        
        @favorite_foods.include?(new_food)
        
        # Given Solution
        # @favorite_foods.map(&:downcase).include?(string.downcase)
    end

    # setters
    def age=(num)
        @age = num
    end
end
