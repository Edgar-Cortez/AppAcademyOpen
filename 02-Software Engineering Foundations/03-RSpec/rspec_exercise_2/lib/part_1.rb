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

def merge(hash_1, hash_2)
    new_hash = hash_1.merge(hash_2) { |key, val_1, val_2|  val_2}
    
    new_hash
end