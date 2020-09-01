require "byebug"

def select_even_nums(arr)
    even = arr.select do |ele|
        ele.even?
    end

    even
end