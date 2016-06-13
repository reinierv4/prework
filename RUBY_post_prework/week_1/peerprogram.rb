include hourly_pay


class Employee
    attr_reader :name, :email
    def initialize(name, email)
      @name = name
      @email = email
	  @employees = []
    end
end

class YearlyEmployee < Employee
  def initialize(name,email,yearly_rate)
    @name = name
    @email = email
    @yearly_rate = yearly_rate
  end
    def weekly_calculator
      weekly_rate = @yearly_rate / 52
  end
end

class HourlyEmployee < Employee
    def initialize(name, email, hourly_rate, hours_worked)
        @name = name
        @email = email
        @hourly_rate = hourly_rate
        @hours_worked = hours_worked
    end
include hourly_pay
end

class YearlyHourlyEmployee < Employee
  include payroll_helpers
  def initialize(name,email,yearly_salary,hourly_rate,hours_worked)
    @name = name
    @email = email
    @yearly_rate = yearly_rate
    @hourly_rate = hourly_rate
    @hours_worked = hours_worked
  end
  def yearlyhourly_rate
    @weekly_rate = yearly_payment / 52

     if hours_worked > 40
       @weekly_rate(0.0) do |x, y|
         x.@weekly_rate + y.@weekly_rate 
    end
  end
end

    def calculate_salary
     puts "#{@name} has worked #{@hours_worked}"
    end


class Payroll
    def initialize(employees)
        @employees = employees
    end
    def calculate
      hola.reduce(0.0) do |x, y|
        x.@weekly_rate + y.@weekly_rate

    end
  end

  def pay_employees

  end
end
lluis = YearlyEmployee.new("Lluis", "lluis@yahoo.com", 1000000)
ted = YearlyHourlyEmployee.new("Ted", "ted@hotmail.com", 60000, 275, 55)
magnus = HourlyEmployee.new("Magnus", "magnus@gmail.com", 15, 10)
marcos = HourlyEmployee.new("Marcos", "marcos@yandex.com", 15, 10)
