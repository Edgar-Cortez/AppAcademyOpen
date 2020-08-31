# Run `bundle exec rspec` and satisy the specs.
# You should implement your methods in this file.
# Feel free to use the debugger when you get stuck.
require "byebug"

def largest_prime_factor(num)
    prime_factors = []
    
    (1..num).each do |i|
        if num % i == 0 && prime?(i)
            prime_facts << i
        end
    end
    
    return prime_factors.last



end

def prime?(num)
    return false if num < 2

    (2...num).each do |factor|
        if num % factor == 0
            return false
        end
    end

    return true
end