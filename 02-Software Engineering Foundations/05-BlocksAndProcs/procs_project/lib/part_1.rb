require "byebug"

def my_map(arr, &prc)
    new_arr = []
    arr.each do |ele|
        new_arr << prc.call(ele)
    end

    new_arr
end
