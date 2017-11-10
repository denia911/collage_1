# class for specials
class Faculty
  attr_accessor :students

  def initialize(name, students = nil)
    @name = name
    @students = students || []
  end
end
