require_relative 'seed'
require_relative 'faculty'
require_relative 'collage'
require 'faker'

puts('Welcome to our collage. What you need to do?
(software, robot, draft, caclulate_budget)')

n_action = gets.chomp

puts @collage.find_student(n_action)
