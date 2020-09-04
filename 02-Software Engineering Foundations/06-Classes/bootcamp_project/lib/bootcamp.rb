class Bootcamp
  def initialize(name, slogan, student_capacity)
      @name = name
      @slogan = slogan
      @student_capacity = student_capacity
      @students = []
      @teachers = []
      @grades = Hash.new { |h, k| h[k] = [] }
  end

  # getters
  def name
    @name
  end

  def slogan
    @slogan
  end

  def teachers
    @teachers
  end

  def students
    @students
  end

  def hire(person)
    @teachers << person
  end

  def enroll(student)
    @old_students = @students.length

    if @students.length < @student_capacity 
      @students << student
    end

    @new_students = @students.length

    if @new_students > @old_students
      true
    else
      false
    end

    # Given Solution
    # if @students.length < @student_capacity 
    #   @students << student
    #   return true
    # end

    # false
  end

  def enrolled?(student)
    @students.include?(student)
  end

  def student_to_teacher_ratio
    @students.length / @teachers.length
  end

  def add_grade(student, grade)
    if @students.include?(student)
      @grades[student] << grade
      true
    else
      false
    end

    # Given Solution
    # if self.enrolled?(student)
    #   @grades[student] << grade
    #   true
    # else
    #   false
    # end
  end

  def num_grades(student)
    @grades[student].length
  end

  def average_grade(student)
    if num_grades(student) > 0
      @grades[student].sum / @grades[student].length
    else
      nil
    end

    # Given Solution
    # if self.enrolled?(student) && self.num_grades(student) > 0
    #   grades = @grades[student]
    #   sum = 0
    #   grades.each { |grade| sum += grade }
    #   return sum / grades.length
    # end

    # nil
  end
end
