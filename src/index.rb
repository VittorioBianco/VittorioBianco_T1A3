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
logger = """ 
██╗      ██████╗  ██████╗     ██╗    ██╗ ██████╗ ██████╗ ██╗  ██╗ ██████╗ ██╗   ██╗████████╗
██║     ██╔═══██╗██╔════╝     ██║    ██║██╔═══██╗██╔══██╗██║ ██╔╝██╔═══██╗██║   ██║╚══██╔══╝
██║     ██║   ██║██║  ███╗    ██║ █╗ ██║██║   ██║██████╔╝█████╔╝ ██║   ██║██║   ██║   ██║   
██║     ██║   ██║██║   ██║    ██║███╗██║██║   ██║██╔══██╗██╔═██╗ ██║   ██║██║   ██║   ██║   
███████╗╚██████╔╝╚██████╔╝    ╚███╔███╔╝╚██████╔╝██║  ██║██║  ██╗╚██████╔╝╚██████╔╝   ██║   
╚══════╝ ╚═════╝  ╚═════╝      ╚══╝╚══╝  ╚═════╝ ╚═╝  ╚═╝╚═╝  ╚═╝ ╚═════╝  ╚═════╝    ╚═╝   
                                                                                          
"""
log = """
██╗    ██╗ ██████╗ ██████╗ ██╗  ██╗ ██████╗ ██╗   ██╗████████╗    ██╗      ██████╗  ██████╗ ███████╗
██║    ██║██╔═══██╗██╔══██╗██║ ██╔╝██╔═══██╗██║   ██║╚══██╔══╝    ██║     ██╔═══██╗██╔════╝ ██╔════╝
██║ █╗ ██║██║   ██║██████╔╝█████╔╝ ██║   ██║██║   ██║   ██║       ██║     ██║   ██║██║  ███╗███████╗
██║███╗██║██║   ██║██╔══██╗██╔═██╗ ██║   ██║██║   ██║   ██║       ██║     ██║   ██║██║   ██║╚════██║
╚███╔███╔╝╚██████╔╝██║  ██║██║  ██╗╚██████╔╝╚██████╔╝   ██║       ███████╗╚██████╔╝╚██████╔╝███████║
 ╚══╝╚══╝  ╚═════╝ ╚═╝  ╚═╝╚═╝  ╚═╝ ╚═════╝  ╚═════╝    ╚═╝       ╚══════╝ ╚═════╝  ╚═════╝ ╚══════╝
"""

descr = File.read('./5x5_workout.txt')
week1 = File.read('./Week_1.txt')
week2 = File.read('./Week_2.txt')
array = []
wolist = ['Squats', 'Overhead Press', 'Dead Lifts', 'Bench Press', 'Bent Over Row']

def workout
  time = Time.new
  $stdout.puts "Select from 'Squats', 'Overhead Press', 'Dead Lifts', 'Bench Press', 'Bent Over Row'".colorize(:light_blue)
  $stdout.puts 'Which exercise would you like to log?'.colorize(:green)
  exercise = $stdin.gets.chomp
  while(true)
    break if (exercise == 'Squats' || exercise == 'Overhead Press' || exercise == 'Dead Lifts' ||exercise == 'Bench Press' || exercise == 'Bent Over Row')
    puts "Invalid entry: #{exercise}.  Please enter a valid exercise!".colorize(:red)
    exercise = $stdin.gets.chomp
  end
  $stdout.puts 'Using numbers, how many sets did you perform?'.colorize(:green)
  sets = $stdin.gets.chomp.to_i
  while(true)
    break if (sets == 1 || sets == 2 || sets == 3 ||sets == 4 || sets == 5)
    $stdout.puts "Invalid entry: #{sets}.  Please enter from 1 to 5.".colorize(:red)
    sets = $stdin.gets.chomp.to_i
  end
  "You did #{sets} sets of #{exercise} on ".colorize(:light_blue) + time.strftime('%d/%m/%Y').colorize(:light_blue)
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
    $stdout.puts descr.colorize(:green)
  when 2
    clear
    $stdout.puts week1.colorize(:green)
  when 3
    clear
    $stdout.puts week2.colorize(:green)
  when 4
    clear
    puts logger.colorize(:green)
    # $stdout.puts "The recommended 5x5 exercises are #{wolist.join(", ")}"
    array.push(workout)
  when 5
    clear
    puts log.colorize(:green)
    $stdout.puts array
  when 6
    clear
    $stdout.puts'Goodbye!'.colorize(:red)
    exit
  else
  end
end
