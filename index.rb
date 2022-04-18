# class FivebyFive
#   attr_reader(:chest, :back)
# end
descr = File.read("./5x5_workout.txt") 
week1 = File.read("./Week_1.txt")
week2 = File.read("./Week_2.txt")
# descr = "placeholder1" 
# week1 = "placeholder2" 
# week2 = "placeholder3" 

while true
  puts "Welcome to the 5x5 Workout terminal application! Please select from 1-4"
  puts "1) for a brief description of the 5x5 routine\n2) for Week 1's exercises\n3) for week 2's exercicses\n4) to log a workout\n5) to exit"
  input = $stdin.gets.chomp.to_i
    case input
    when 1 
      puts descr
    when 2
      puts week1
    when 3
      puts week2
    when 4
    
    when 5
      puts "Goodbye!"
      exit
    else
    puts "Please select a valid input."
    end
end
