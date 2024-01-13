class Employee
  attr_reader :name, :position
  private attr_reader :salary

  def initialize(name, position, salary)
    @name = name
    @position = position
    @salary = salary
  end

  def details
    "Name: #{@name}, Position: #{@position}"
  end

  def is_paid_less_than?(employee2)
    @salary < employee2.send(:salary)
  end
end
