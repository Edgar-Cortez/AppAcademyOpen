require "employee"

class Startup
  attr_reader(:name, :funding, :salaries, :employees)

  def initialize(name, funding, salaries)
    @name = name
    @funding = funding
    @salaries = salaries
    @employees = []
  end

  def valid_title?(title)
    # @salaries.include?(title)
    
    # Given Solution
    @salaries.has_key?(title)
  end

  def >(startup)
    # if self.funding > startup.funding
    #   true
    # else
    #   false
    # end

    # Given Solution
    self.funding > startup.funding
  end

  def hire(employee_name, title)
    # Given Solution
    if self.valid_title?(title)
      @employees << Employee.new(employee_name, title)
    else
      raise "title is invalid!"
    end
  end

  def size
    @employees.length
  end

  def pay_employee(employee)
    # Given Solution
    money_owed = @salaries[employee.title]

    if @funding >= money_owed
      employee.pay(money_owed)
      @funding -= money_owed
    else
      raise "not enough funding!"
    end
  end

  def payday
   @employees.each do |employee|
     self.pay_employee(employee)
   end
  end
  
  def average_salary
    # total = 0

    # @employees.each do |employee|
    #   total += @salaries[employee.title]
    # end
    
    # total / self.size

    # Given Solution
    sum = 0

    @employees.each do |employee|
      sum += @salaries[employee.title]
    end
    
    sum / (@employees.length * 1.0)
  end

  def close
    @employees = []
    @funding = 0
  end

  def acquire(startup)
    # @funding += startup.funding
    # @salaries = startup.salaries.merge(@salaries)
    # (@employees << startup.employees).flatten!
    # startup.close

    # Given Solution
    @funding += startup.funding
    
    startup.salaries.each do |title, amount|
      if !@salaries.has_key?(title)
        @salaries[title] = amount
      end
    end

    @employees += startup.employees

    startup.close
  end
end
