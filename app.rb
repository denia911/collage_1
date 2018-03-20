require_relative 'faculty'
require_relative 'collage'
require 'faker'

puts('Welcome to our collage. What you need to do?
(software, robot, draft, caclulate_budget)')

n_action = gets.chomp
collage = Collage.new('collage')

puts collage.find_student(n_action)
