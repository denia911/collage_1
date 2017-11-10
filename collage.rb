# Class for collage
class Collage
  attr_reader :faculties

  def initialize(name, faculties = nil)
    @name = name
    @faculties = faculties || {}
    @soft_stud = faculties[@software]
    @prog_stud = faculties[@program]
    @mech_stud = faculties[@mechanick]
    @econ_stud = faculties[@economy]
  end

  def find_student(action)
    @action = action
    case @action.downcase
    when 'software' then puts(@soft_stud[rand(@soft_stud.size)])
    when 'robot' then puts(@prog_stud[rand(@prog_stud.size)])
    when 'draft' then puts(@mech_stud[rand(@mech_stud.size)])
    when 'calculate_budget' then puts(@econ_stud[rand(@econ_stud.size)])
    else puts('Please enter one of these values')
    end
  end
end
