require 'faker'
# Class for adding new students and their distribution by faculty
class Student
  attr_reader :name

  def name
    Faker::Name.name
  end
end

print