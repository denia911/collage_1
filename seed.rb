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

@collage = Collage.new('collage')
@collage.software_fac.students = students1
@collage.program_fac.students = students2
@collage.mechanick_fac.students = students3
@collage.economy_fac.students = students4
