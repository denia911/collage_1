require_relative 'collage'
require_relative 'faculty'
require 'faker'
require_relative 'seed'

puts('Welcome to our collage. What you need to do?
(software, robot, draft, caclulate_budget)')

n_action = gets.chomp

collage = Collage.new('collage', @faculties)
puts collage.find_student(n_action)
