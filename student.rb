# Class for adding new students and their distribution by faculty
class Student
  attr_reader :name

  def initialize(name = nil)
    @name = name
  end
end
