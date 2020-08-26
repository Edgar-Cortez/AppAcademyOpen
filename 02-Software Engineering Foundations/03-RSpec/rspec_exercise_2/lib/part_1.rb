def partition(arr, num)
    lower = []
    greater = []

    arr.each do |ele|
        if ele < num
            lower << ele
        else
            greater << ele
        end
    end

    [lower, greater]
end