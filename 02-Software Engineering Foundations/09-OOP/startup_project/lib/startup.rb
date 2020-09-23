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
  
end
