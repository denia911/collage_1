# Class for collage
class Collage
  attr_reader :faculties

  def initialize(name, faculties = nil)
    @name = name
    @faculties = faculties || {}
  end

  def find_student(action)
    @action = action
    case @action.downcase
    when 'software' then random_student(@software)
    when 'robot' then random_student(@program)
    when 'draft' then random_student(@mechanick)
    when 'calculate_budget' then random_student(@economy)
    else 'Please enter one of these values'
    end
  end

  private

  def random_student(faculty)
    stud_rand = rand(faculties[faculty].size)
    students_count = faculties[faculty][stud_rand]
  end
end
