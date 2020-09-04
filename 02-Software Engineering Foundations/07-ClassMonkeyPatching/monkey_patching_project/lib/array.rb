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
end
