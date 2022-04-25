# frozen_string_literal: true

require 'colorize'
require 'tty-prompt'

banner = ''"

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


"''

descr = File.read('./5x5_workout.txt')
week1 = File.read('./Week_1.txt')
week2 = File.read('./Week_2.txt')
array = []
wolist = ['Squats', 'Overhead Press', 'Dead Lifts', 'Bench Press', 'Bent Over Row']

def workout
  time = Time.new
  puts 'Which exercise would you like to log?'
  exercise = gets.chomp
  puts 'How many sets did you perform?'
  sets = gets.chomp.to_i
  "You did #{sets} sets of #{exercise} on " + time.strftime('%d/%m/%Y')
end

def clear
  system('clear')
end

puts banner.colorize(:yellow)
puts 'Welcome to the 5x5 Workout terminal application! Please select a number from 1-5'.colorize(:light_blue)

prompt = TTY::Prompt.new
loop do
  menu = prompt.select('Select from menu'.colorize(:green)) do |choice|
    choice.enum '.'
    choice.choice 'What is 5x5?'.colorize(:yellow), 1
    choice.choice 'Week 1 Exercises'.colorize(:yellow), 2
    choice.choice 'Week 2 Exercises'.colorize(:yellow), 3
    choice.choice 'Log a workout'.colorize(:yellow), 4
    choice.choice 'View Logs'.colorize(:yellow), 5
    choice.choice 'Exit'.colorize(:red), 6
  end

  puts menu
  case menu
  when 1
    clear
    puts descr.colorize(:green)
  when 2
    clear
    puts week1.colorize(:green)
  when 3
    clear
    puts week2.colorize(:green)
  when 4
    clear
    print wolist
    array.push(workout)
  when 5
    clear
    puts array
  when 6
    puts 'Goodbye!'.colorize(:red)
    exit
  else
  end
end
