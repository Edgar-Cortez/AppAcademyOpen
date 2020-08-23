def average(num_1, num_2)
  (num_1 + num_2) / 2.0
end

def average_array(array)
  array.sum / (array.length * 1.0)
end

def repeat(str, num)
  str * num
end

def yell (str)
  str.upcase + "!"
end

def alternating_case(str)
  arr = str.downcase.split(' ')

  arr.each_with_index do |ele, i|
    if !i.odd?
      ele.upcase!
    # else
    #   ele.downcase!
    end
  end
  
  return arr.join(' ')
end