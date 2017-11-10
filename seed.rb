require_relative 'faculty'
require 'faker'
require_relative 'collage'
students1 = []
i = 0
loop do
  students1[i] = Faker::Name.name
  i += 1
  break if i == 10
end
students2 = []
i = 0
loop do
  students2[i] = Faker::Name.name
  i += 1
  break if i == 10
end
students3 = []
i = 0
loop do
  students3[i] = Faker::Name.name
  i += 1
  break if i == 10
end
students4 = []
i = 0
loop do
  students4[i] = Faker::Name.name
  i += 1
  break if i == 10
end

software_fac = Faculty.new('software_fac', students1)
program_fac = Faculty.new('program_fac', students2)
mechanick_fac = Faculty.new('mechanick_fac', students3)
economy_fac = Faculty.new('economy_fac', students4)

@faculties = {
  @software => software_fac.students,
  @program => program_fac.students,
  @mechanick => mechanick_fac.students,
  @economy => economy_fac.students
}
