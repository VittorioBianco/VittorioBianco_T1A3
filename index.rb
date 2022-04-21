# frozen_string_literal: true

descr = File.read('./5x5_workout.txt')
week1 = File.read('./Week_1.txt')
week2 = File.read('./Week_2.txt')
require 'colorize'
array = []

def workout
  time2 = Time.now
  puts "What exercises have you done?"
  exercise = gets.chomp
  puts "How many sets?"
  sets = gets.chomp
   "You did #{sets} sets of #{exercise} on " + time2.inspect
end

loop do
  'Welcome to the 5x5 Workout terminal application! Please select a number from 1-5'.colorize(:light_blue)
  puts "\n1) WHAT IS 5X5\n2) WEEK 1 EXERCISES\n3) WEEK 2 EXERCISES\n4) LOG A WORKOUT\n5) VIEW WORKOUT LOG\n6) EXIT".colorize(:blue)
  input = $stdin.gets.chomp.to_i
  case input
  when 1
    puts descr.colorize(:green)
    # puts "Return to menu? y/n"
    #  if y returns to main menu, otherwise exits?
  when 2
    puts week1.colorize(:green)
  when 3
    puts week2.colorize(:green)
  when 4
    array.push(workout())
  when 5
    puts array
  when 6
    puts 'Goodbye!'.colorize(:red)
    exit
  else
    puts "#{input} is not valid. Please select 1-5 and press enter!".colorize(:red)
  end
end

# class FivebyFive
# attr_accessor :workedout, :log
# @workedout = false
# @log = []

#   def workedout
#     $stdout.puts "Would you like to log a workout? y/n"
#     inp = $stdin.gets.chomp
#      if inp == n
#       return
#      elsif
#      inp == y
#      @workedout = true
#      @log.<<("Workout logged!")
#      else
#   end

# end
# workout = 0
# def workedout(a)  
#   puts "have you worked out?"
# input = gets.chomp
#   if input == "yes" then a += 1
#   puts "you have worked out #{a} times"
#   return a
#   else  
# end
# end
# workedout(workout)

# workedout(workout)

