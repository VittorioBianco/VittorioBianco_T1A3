# frozen_string_literal: true

descr = File.read('./5x5_workout.txt')
week1 = File.read('./Week_1.txt')
week2 = File.read('./Week_2.txt')
require 'colorize'
require 'tty-prompt'
array = []

def workout
  time2 = Time.now
  puts "What exercises have you done?"
  exercise = gets.chomp
  puts "How many sets?"
  sets = gets.chomp
   "You did #{sets} sets of #{exercise} on " + time2.inspect
end

banner = """

███████╗██╗██╗   ██╗███████╗    ██████╗ ██╗   ██╗    ███████╗██╗██╗   ██╗███████╗
██╔════╝██║██║   ██║██╔════╝    ██╔══██╗╚██╗ ██╔╝    ██╔════╝██║██║   ██║██╔════╝
█████╗  ██║██║   ██║█████╗      ██████╔╝ ╚████╔╝     █████╗  ██║██║   ██║█████╗  
██╔══╝  ██║╚██╗ ██╔╝██╔══╝      ██╔══██╗  ╚██╔╝      ██╔══╝  ██║╚██╗ ██╔╝██╔══╝  
██║     ██║ ╚████╔╝ ███████╗    ██████╔╝   ██║       ██║     ██║ ╚████╔╝ ███████╗
╚═╝     ╚═╝  ╚═══╝  ╚══════╝    ╚═════╝    ╚═╝       ╚═╝     ╚═╝  ╚═══╝  ╚══════╝
                                                                                 
            ████████╗██████╗  █████╗ ██╗███╗   ██╗███████╗██████╗                
            ╚══██╔══╝██╔══██╗██╔══██╗██║████╗  ██║██╔════╝██╔══██╗               
               ██║   ██████╔╝███████║██║██╔██╗ ██║█████╗  ██████╔╝               
               ██║   ██╔══██╗██╔══██║██║██║╚██╗██║██╔══╝  ██╔══██╗               
               ██║   ██║  ██║██║  ██║██║██║ ╚████║███████╗██║  ██║               
               ╚═╝   ╚═╝  ╚═╝╚═╝  ╚═╝╚═╝╚═╝  ╚═══╝╚══════╝╚═╝  ╚═╝               
                                                                                 

"""

puts banner.colorize(:yellow)
puts'Welcome to the 5x5 Workout terminal application! Please select a number from 1-5'.colorize(:light_blue) 
# loop do
  
#   puts "\n1) WHAT IS 5X5\n2) WEEK 1 EXERCISES\n3) WEEK 2 EXERCISES\n4) LOG A WORKOUT\n5) VIEW WORKOUT LOG\n6) EXIT".colorize(:blue)
#   input = $stdin.gets.chomp.to_i
#   case input
#   when 1
#     puts descr.colorize(:green)
#     # puts "Return to menu? y/n"
#     #  if y returns to main menu, otherwise exits?
#   when 2
#     puts week1.colorize(:green)
#   when 3
#     puts week2.colorize(:green)
#   when 4
#     array.push(workout())
#   when 5
#     puts array
#   when 6
#     puts 'Goodbye!'.colorize(:red)
#     exit
#   else
#     puts "#{input} is not valid. Please select 1-5 and press enter!".colorize(:red)
#   end
# end

# TTY Menu attempt
prompt = TTY::Prompt.new
loop do
menu = prompt.select("Select from menu".colorize(:green)) do |choice|
  choice.enum "."
  choice.choice "What is 5x5?".colorize(:yellow), 1
  choice.choice "Week 1 Exercises".colorize(:yellow), 2
  choice.choice "Week 2 Exercises".colorize(:yellow), 3
  choice.choice "Log a workout".colorize(:yellow), 4
  choice.choice "View Logs".colorize(:yellow), 5
  choice.choice "Exit".colorize(:red), 6
end

puts menu
if menu == 1
  puts "\e[H\e[2J"
  puts descr.colorize(:green)
elsif menu == 2
  puts "\e[H\e[2J"
  puts week1.colorize(:green)
elsif menu == 3
  puts "\e[H\e[2J"
  puts week2.colorize(:green)
elsif menu == 4
  puts "\e[H\e[2J"
  array.push(workout())
  # prompt.yes?("Would you like to log another exercise?") do |q|
  #   q.suffix "Yes/No"
  #   if yes array.push(workout())
  #   else
    # end
elsif menu == 5
  puts "\e[H\e[2J"
  puts array 
elsif menu == 6
  puts "Good-bye!".colorize(:red)
  exit
else
  puts "Please select a valid input!"
end
end