require 'faker'
require_relative 'collage'
require_relative 'student'
student = Student.new
students1 = (0..10).map { student.name }
students2 = (0..10).map { student.name }
students3 = (0..10).map { student.name }
students4 = (0..10).map { student.name }

@collage = Collage.new('collage')
@collage.software_fac.students = students1
@collage.program_fac.students = students2
@collage.mechanick_fac.students = students3
@collage.economy_fac.students = students4

print @collage.software_fac.students