require_relative 'faculty'
# Class for collage
class Collage
  attr_accessor 'software_fac'
  attr_accessor 'program_fac'
  attr_accessor 'mechanick_fac'
  attr_accessor 'economy_fac'

  def initialize(name)
    @name = name
    @software_fac = Faculty.new('software_fac')
    @program_fac = Faculty.new('program_fac')
    @mechanick_fac = Faculty.new('mechanick_fac')
    @economy_fac = Faculty.new('economy_fac')
  end

  def find_student(action)
    @action = action
    case @action.downcase
    when 'software' then random_student(@software_fac.students)
    when 'robot' then random_student(@program_fac.students)
    when 'draft' then random_student(@mechanick_fac.students)
    when 'calculate_budget' then random_student(@economy_fac.students)
    else 'Please enter one of these values'
    end
  end

  private

  def random_student(faculty)
    (faculty[rand(faculty.size)]).s_name
  end
end
