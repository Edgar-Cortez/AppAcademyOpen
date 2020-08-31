# Run `bundle exec rspec` and satisy the specs.
# You should implement your methods in this file.
# Feel free to use the debugger when you get stuck.
require "byebug"

# 1
def largest_prime_factor(num)
    prime_factors = []
    
    (1..num).each do |i|
        if num % i == 0 && prime?(i)
            prime_factors << i
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

# 2
def unique_chars?(str)
    char_count =  Hash.new(0)

    str.each_char do |char|
        char_count[char] += 1
    end

    if char_count.value?(2)
        return false
    else
        return true
    end
end