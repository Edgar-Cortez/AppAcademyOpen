class Room
  def initialize(capacity)
    @capacity = capacity
    @occupants = []
  end

  def capacity
    @capacity
  end

  def occupants
    @occupants
  end

  def full?
    if @occupants.length < @capacity
      return false
    else
      return true
    end
  end

  def available_space
    return capacity - occupants.length
  end

  def add_occupant(name)
    available = self.full?

    if !available
      @occupants << name
      true
    else
      false
    end
  end

end
