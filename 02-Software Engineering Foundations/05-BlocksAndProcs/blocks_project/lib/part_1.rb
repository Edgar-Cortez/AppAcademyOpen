require "byebug"

def select_even_nums(arr)
    # even = arr.select do |ele|
    #     ele.even?
    # end
    even = arr.select(&:even?)

    even
end

def reject_puppies(arr)
    older_pups = arr.reject {|k| k["age"] <= 2}

    older_pups
end