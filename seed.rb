require 'faker'
require_relative 'collage'
require_relative 'student'
students1 = (0..10).map { |_| Student.new(Faker::Name.name) }
students2 = (0..10).map { |_| Student.new(Faker::Name.name) }
students3 = (0..10).map { |_| Student.new(Faker::Name.name) }
students4 = (0..10).map { |_| Student.new(Faker::Name.name) }

@collage = Collage.new('collage')
@collage.software_fac.students = students1
@collage.program_fac.students = students2
@collage.mechanick_fac.students = students3
@collage.economy_fac.students = students4
