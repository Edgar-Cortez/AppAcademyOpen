require "byebug"

def my_map(arr, &prc)
    new_arr = []
    arr.each do |ele|
        new_arr << prc.call(ele)
    end

    new_arr
end

def my_select(arr, &prc)
    new_arr = []
    arr.each do |ele|
        if prc.call(ele) == true
            new_arr << ele
        end
    end

    new_arr
end


def my_count(arr, &prc)
    counter = 0
    arr.each do |ele|
        if prc.call(ele) == true
            counter += 1
        end
    end

    counter
end