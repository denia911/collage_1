require 'faker'
require_relative 'collage'
require_relative 'student'
@student = Student.new
students1 = Array.new(10)
students2 = Array.new(10)
students3 = Array.new(10)
students4 = Array.new(10)
@student = Faker::Name.name
students1 = students1.map { |_| @student }
students2 = students2.map { |_| @student }
students3 = students3.map { |_| @student }
students4 = students4.map { |_| @student }

@collage = Collage.new('collage')
@collage.software_fac.students = students1
@collage.program_fac.students = students2
@collage.mechanick_fac.students = students3
@collage.economy_fac.students = students4
