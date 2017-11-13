# Class for adding new students and their distribution by faculty
class Student
  def initialize(name = nil)
    @name = name
  end

  def name
    print(@name)
  end
end
