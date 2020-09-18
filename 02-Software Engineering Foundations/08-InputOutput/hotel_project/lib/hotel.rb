require_relative "room"

class Hotel
  def initialize(name, capacities)
      @name = name
      @rooms = {}

      capacities.each do |room_name, capacity|
        @rooms[room_name] = Room.new(capacity)
      end
  end

  def name
    # new_name = @name.split(" ")
    
    # new_name.map! do |word|
    #   word.capitalize
    # end

    # new_name.join(" ")

    # Given Solution
    @name.split(" ").map(&:capitalize).join(" ")
  end

  def rooms 
    @rooms
  end

  def room_exists?(name)
    # @rooms.include?(name)

    # Given Solution
    @rooms.has_key?(name)
  end

  def check_in(person, room)
    # exists = self.room_exists?(room)
    # add_person = Room.add_occupant(person)

    # if !exists
    #   puts "sorry, room does not exist"
    # else
    #   if add_person
    #     puts "check in successful"
    #   else
    #     puts "sorry, room is full"
    #   end
    # end

    # Given Solution
    if self.room_exists?(room)
      if @rooms[room].add_occupant(person)
        puts "check in successful"
      else
        puts "sorry, room is full"
      end
    else
      puts "sorry, room does not exist"
    end
  end

  def has_vacancy?
    # @rooms.each do |k, v|
    #   if k[v].full?
    #     false
    #   else
    #     true
    #   end
    # end

    # Given Solution
    @rooms.values.any? { |room| room.available_space > 0 }
  end

  def list_rooms
    # Given Solution
    @rooms.each do |room_name, room|
      puts "#{room_name}: #{room.available_space}"
    end
  end

end
