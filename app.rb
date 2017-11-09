require_relative 'student'
require_relative 'collage_class'
require_relative 'faculty'
require 'faker'
# Variables have been created for faculties
NAU = Collage.new('nau')

nau = NAU.create

system_engineering = Special.new('system_engineering')
software_fac = system_engineering.create
nau << software_fac

program = Special.new('program')
program_fac = program.create
nau << program_fac

mechanick = Special.new('mechanick')
mechanick_fac = mechanick.create
nau << mechanick_fac

economy = Special.new('economy')
economy_fac = economy.create
nau << economy_fac
# Adding new students and distribution by faculty
i = 0
loop do
  i += 1
  student = Student.new(Faker::Name.name, software_fac)
  student.add_student
  break if i == 10
end
i = 0
loop do
  i += 1
  student = Student.new(Faker::Name.name, program_fac)
  student.add_student
  break if i == 10
end
i = 0
loop do
  i += 1
  student = Student.new(Faker::Name.name, mechanick_fac)
  student.add_student
  break if i == 10
end
i = 0
loop do
  i += 1
  student = Student.new(Faker::Name.name, economy_fac)
  student.add_student
  break if i == 10
end
puts('Welcome to our collage. What you need to do?
(software, robot, draft, caclulate_budget)')

n_action = gets.chomp

case n_action.downcase
  when 'software' then puts(software_fac[rand(software_fac.size)])
  when 'robot' then puts(program_fac[rand(program_fac.size)])
  when 'draft' then puts(mechanick_fac[rand(mechanick_fac.size)])
  when 'calculate_budget' then puts(economy_fac[rand(economy_fac.size)])
  else puts('Please enter one of these values')
end
