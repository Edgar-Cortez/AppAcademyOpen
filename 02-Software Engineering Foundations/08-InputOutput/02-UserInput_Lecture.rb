# gets  Built in method to allow a user to give input
p "Enter your name:"
name = gets
p "hello " + name   #"hello Edgar\n"


# Dealing with New Lines
# chomp Removes last character in the string
puts "Enter 'yes' or 'no'"

response = gets.chomp

if response == "yes"
    puts "yup!"
elsif response == "no"
    puts "nah!"
else
    puts "I'm sorry, my responses are limited."
end


# Getting Numbers
# gets Will always return a string
# to_i Will convert the string to an integer
puts "Enter a number: "
num = gets.chomp.to_i
puts 2 * num
