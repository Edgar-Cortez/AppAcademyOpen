require "byebug"

# 1
def my_map(arr, &prc)
    new_arr = []
    arr.each do |ele|
        new_arr << prc.call(ele)
    end

    new_arr
end

# 2
def my_select(arr, &prc)
    new_arr = []
    arr.each do |ele|
        if prc.call(ele) == true
            new_arr << ele
        end
    end

    new_arr
end

# 3
def my_count(arr, &prc)
    counter = 0
    arr.each do |ele|
        if prc.call(ele) == true
            counter += 1
        end
    end

    counter
end

# 4
def my_any?(arr, &prc)
    counter = 0
    arr.each do |ele|
        if prc.call(ele) == true
            counter += 1
        end
    end

    if counter > 0
        true
    else
        false
    end
end

# 5
def my_all?(arr, &prc)
    counter = 0
    arr.each do |ele|
        if prc.call(ele) == true
            counter += 1
        end
    end

    if counter == arr.size
        true
    elsif counter == 0 || counter < arr.size
        false
    end
end