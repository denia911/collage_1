# Student realization
class Student
  def initialize(name, faculcitty)
    @name = name
    @faculsity = faculcitty
  end

  def add_student
    @faculsity << @name
  end
end
