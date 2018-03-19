require 'faker'
require_relative 'collage'
require_relative 'student'
student = Student.new
students = (0..40).map { student.name }

@collage = Collage.new('collage')
@collage.software_fac.students = students[0..9]
@collage.program_fac.students = students[10..19]
@collage.mechanick_fac.students = students[20..29]
@collage.economy_fac.students = students[30..40]