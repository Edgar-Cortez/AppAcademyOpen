# Monkey-Patch Ruby's existing Array class to add your own custom methods
class Array
  def span 
    if self.length > 0
      self.max - self.min
    else
      nil
    end
  end

  def average
    if self.length > 0
      self.sum / (self.length * 1.0)
    else
      nil
    end
  end

  def median
    sorted = self.sort
    median = ((sorted.length + 1) / 2) - 1

    return nil if sorted.empty?

    if sorted.length % 2 == 1
      sorted[median]  
    elsif self.length % 2 == 0
      (sorted[median] + sorted[median + 1]) / 2.0
    end
  end

  def counts
    count = Hash.new(0)
    self.each { |ele| count[ele] += 1 }

    count
  end

  def my_count(ele)
    hash = self.counts
    hash[ele]

    # GIVEN SOLUTION
    # num = 0
    # self.each do |el|
    #   if el == ele
    #     num += 1
    #   end 
    # end

    # num
  end

  def my_index(ele)
    self.each_with_index do |el , i|
      if el == ele
        return i
      end
    end

    return nil
  end

  def my_uniq
    uniq_arr = []
    hash = self.counts

    hash.each_key { |key| uniq_arr << key }

    uniq_arr

    # GIVEN SOLUTION
    # hash = {}
    # self.each { |ele| hash[ele] = true }
    # hash.keys
  end

  def my_transpose
    # FOUND SOLUTION
    self.each_with_index.map do |_, index|
      self.map { |row| row[index] }
    end

    # GIVEN SOLUTION
    new_arr = []
    (0...self.length).each do |row|
      new_row = []
      
      (0...self.length).each do |col|
        # new_row << self[row][col] # Creates an exact duplicate of original array
        new_row << self[col][row]
      end
      
      new_arr << new_row
    end
    new_arr
  end
end

