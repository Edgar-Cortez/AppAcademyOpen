# 

# ---------- Steps ----------
# 	- Create helper method to handle addition of elements of given array
# 	    - Create variable that holds the sum and set to 0 
# 	    - Itereate through given array and add each element value to sum
# 	    - Return sum divided by 2
# 	- In original method, iterate through given array by element
# 	    - Check if element is == the result of helper method 
# 	    - True: return the element 
# 	 - Return nil if after iterating and not found


# ---------- My Attempt ----------
# def all_else_equal(arr)
#     value = 0
# # 	iterate until you find result of add_num
#     arr.each do |ele|
#       if ele == add_num(arr)
#           value =  ele
#             return value
#       else
            # return nil        # THIS NEEDS TO MOVE TO
#       end
#   end
        #   # TO HERE
# end

# def add_num(arr)
#   sum = 0
    
#     arr.each do |ele|
#       sum += ele
#   end

#     return sum / 2
# end


# ---------- Their Solution ----------
def all_else_equal(arr)
    sum = sum_array(arr)
  
    arr.each do |ele|
      if ele == sum / 2.0
        return ele
      end
    end
  
    return nil
  end
  
  def sum_array(arr)
    sum = 0
  
    arr.each do |num|
      sum += num
    end
  
    return sum
  end

#  ---------- Tests ----------
p all_else_equal([2, 4, 3, 10, 1]) #=> 10, because the sum of all elements is 20
p all_else_equal([6, 3, 5, -9, 1]) #=> 3, because the sum of all elements is 6
p all_else_equal([1, 2, 3, 4])     #=> nil, because the sum of all elements is 10 and there is no 5 in the array
