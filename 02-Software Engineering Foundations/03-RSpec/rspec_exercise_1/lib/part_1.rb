def average(num_1, num_2)
  (num_1 + num_2) / 2.0
end

def average_array(*array)
  sum = array.sum
  return sum / array.length
end