# class for specials
class Faculty
  attr_reader :students

  def initialize(name, students = nill)
    @name = name
    @students = students || []
  end
end
