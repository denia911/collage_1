require 'faker'
require_relative 'collage'
require_relative 'student'
@student = Student.new
students1 = []
i = 0
loop do
  @student = Faker::Name.name
  students1 << @student
  i += 1
  break if i == 10
end
students2 = []
i = 0
loop do
  @student = Faker::Name.name
  students2 << @student
  i += 1
  break if i == 10
end
students3 = []
i = 0
loop do
  @student = Faker::Name.name
  students3 << @student
  i += 1
  break if i == 10
end
students4 = []
i = 0
loop do
  @student = Faker::Name.name
  students4 << @student
  i += 1
  break if i == 10
end

@collage = Collage.new('collage')
@collage.software_fac.students = students1
@collage.program_fac.students = students2
@collage.mechanick_fac.students = students3
@collage.economy_fac.students = students4
