class Employee

  attr_accessor :first_name, :last_name, :salary, :active

  def initialize(input_options)
    @first_name = input_options[:first_name]
    @last_name = input_options[:last_name]
    @salary = input_options[:salary]
    @active = input_options[:active]
  end

  def print_info
    puts "#{first_name} #{last_name} makes #{salary} a year."
  end

  def give_annual_raise
    @salary = @salary * 1.05
  end

end


class Manager < Employee

  def initialize(input_options)
    super
    @employees = input_options[:employees]
  end

  def send_email_report
    puts "Sending email..."
    #use some email sending library to actually do it
    puts "Email sent!"
  end

  def give_all_raises
    @employees.each do |employee|
      employee.give_annual_raise
    end
  end

  def fire_all_employees
    @employees.each do |employee|
      employee.active = false
    end
  end

end


employee1 = Employee.new(last_name: "Carter", salary: 80000, active: true, first_name: "Majora")
employee2 = Employee.new({first_name: "Danilo", last_name: "Campos", salary: 70000, active: true})
manager = Manager.new(first_name: "Stephen", last_name: "Carico", salary: 100000, active: true, employees: [employee1, employee2])
manager.print_info
manager.send_email_report
manager.give_all_raises
puts employee1.salary
puts employee2.salary
manager.fire_all_employees
puts employee1.active
puts employee2.active








