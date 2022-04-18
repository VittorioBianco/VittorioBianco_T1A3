# class FivebyFive
#   attr_reader(:chest, :back)
# end
descr = File.read("./5x5_workout.txt") 
week1 = File.read("./Week_1.txt")
week2 = File.read("./Week_2.txt")
# descr = "placeholder1" 
# week1 = "placeholder2" 
# week2 = "placeholder3" 
require 'colorize'
while true
  puts "Welcome to the 5x5 Workout terminal application! Please select from 1-5".colorize(:blue)
  puts "\n1) WHAT IS 5X5\n2) WEEK 1 EXERCISES\n3) WEEK 2 EXERCISES\n4) LOG A WORKOUT\n5) EXIT".colorize(:blue)
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
      puts "Workout logger is under construction!".colorize(:green)
    
    when 5
      puts "Goodbye!".colorize(:red)
      exit
    else
    puts "Please select a valid input."
    end
end
