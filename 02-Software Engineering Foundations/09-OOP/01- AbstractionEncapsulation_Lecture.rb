# OOP
# Goal is to create programs using objects that interact with each other

# Pillars of OOP
# - Inheritance
# - Abstraction
# - Encapsulation
# - Polymorphism



# Abstraction
# Process of exposing essential features of an object while hiding inner details that are not necessary to using the feature
# V1
class Course
    def initialize(name, teachers, max_students)
        @name = name
        @teachers = teachers
        @max_students = max_students
        @students = []
    end

    def max_students
        @max_students
    end

    def students
        @students
    end

    course =  Course.new("Object Oriented Programming 101", ["Ada Lovelace", "Brian Kernighan"], 3)
    
    # Let's to enroll a student
    if course.students.length < course.max_students
        course.students << "Alice"
    end
end

# V2
class Course
    def initialize(name, teachers, max_students)
      @name = name
      @teachers = teachers
      @max_students = max_students
      @students = []
    end
  
    def enroll(student)
      @students << student if @students.length < @max_students
    end
  end  
  
  course = Course.new("Object Oriented Programming 101", ["Ada Lovelace", "Brian Kernighan"], 3)
  
  # Let's to enroll a student
  course.enroll("Alice")



# Encapsulation
# closely relates methods and data attributes together with the hope of preventing misuse
# Goal is to give users access to the things that are safe for them to use
#   - Some data we may choose to keep private for sake of security


# Properly encapsulated Queue class
class Queue
    def initialize
        @line = []
    end

    def add(ele)
        @line << ele    # add ele to back of line
        nil
    end

    def remove
        @line.shift     # remove front ele of line
    end
end

grocery_checkout = Queue.new

grocery_checkout.add("bob")
grocery_checkout.add("alice")
grocery_checkout.remove          # => "bob"
grocery_checkout.add("noam")
grocery_checkout.add("donald")
grocery_checkout.remove          # => "alice"
grocery_checkout.remove          # => "noam"
grocery_checkout.remove          # => "donald"

# people who are added first to the line will leave first!


# Improperly encapsulated Queue
# If we give the user full access to the @line then we can't enforce any of our rules and the result is disastrous:
class Queue
    def initialize
      @line = []
    end
  
    def line
      @line
    end
  
    def add(ele)
      @line << ele # add ele to back of line
      nil
    end
  
    def remove
      @line.shift  # remove front ele of line
    end
  end
  
  grocery_checkout = Queue.new
  
  grocery_checkout.add("bob")
  grocery_checkout.add("alice")
  grocery_checkout.line.unshift("noam")   # noam cut the line!
  grocery_checkout.remove                 # => "noam"