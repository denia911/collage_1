require_relative 'student_find'
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
  student1 = Student.new(Faker::Name.name, software_fac)
  student1.add_student
  break if i == 10
end
i = 0
loop do
  i += 1
  student2 = Student.new(Faker::Name.name, program_fac)
  student2.add_student
  break if i == 10
end
i = 0
loop do
  i += 1
  student3 = Student.new(Faker::Name.name, mechanick_fac)
  student3.add_student
  break if i == 10
end
i = 0
loop do
  i += 1
  student3 = Student.new(Faker::Name.name, economy_fac)
  student3.add_student
  break if i == 10
end
print('Welcome to our collage. What you need to do?
(software, robot, draft, caclulate_budget)')

n_action = gets.chomp

s_find = StudentFind.new(n_action, software_fac, program_fac, mechanick_fac,
                         economy_fac)
s_find.next_student
