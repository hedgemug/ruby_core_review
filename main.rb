require "./employees.rb"
require "./manager.rb"
require "./intern.rb"

employee1 = Actualize::Employee.new(last_name: "Carter", salary: 80000, active: true, first_name: "Majora")
employee2 = Actualize::Employee.new({first_name: "Danilo", last_name: "Campos", salary: 70000, active: true})
employee1.print_info
employee2.print_info
employee1.give_annual_raise


manager = Actualize::Manager.new(first_name: "Stephen", last_name: "Carico", salary: 100000, active: true, employees: [employee1, employee2])
manager.print_info
manager.send_email_report
manager.give_all_raises
puts employee1.salary


intern = Actualize::Intern.new(first_name: "Stephen", last_name: "Carico", salary: 30000, active: true)
manager.send_email_report
intern.send_email_report