require_relative 'employee'

class Department
  def initialize
    @employees = []
  end

  def add_employee(employee)
    @employees << employee
  end

  def list_employees
    @employees
  end

  def remove_employee(employe_name)
    @employees.delete_if { |e| e.name == employe_name }
  end

  def highest_paid_between(employee1, employee2)
    if employee1.is_paid_less_than?(employee2)
      employee2
    else
      employee1
    end
  end
end
