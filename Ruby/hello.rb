#Created by: Jordan Kidd, Dec 14

#Global variables start with $
$global_var = 2.17

#Arguments to ruby vm
arg1, arg2, arg3 = ARGV
puts "\nDid you pass any arguments to this script?"
puts "If so, they are: #{arg1} #{arg2} #{arg3}\n"


#This is a Ruby comment!
puts "Hello world"
puts "Include variables in string by: #{4+5}"


#Using variables:
pi = 3.14159
answer = 42
hello = "hi"
binary = true
x, y, z = 1, 2, 3
a = [101, 202, 303]
CONST = "I can't be changed. Capital letter starts consts."
CONST = "test?" #WARNING!!
puts "Their values: #{pi}, #{answer}, #{hello}, #{y}."
puts "String " + "Concatenation"
puts "." * 15


#Getting input from ARGV and stdin
puts "What is your age?"
age = $stdin.gets.chomp
puts "You are #{age} year(s) old."


#FILES -----------------------------------------
#Make new file
f = File.new("test.txt", "w")
f.write("This is a new file, made with Ruby!")
f.close

#Read file
f = open("test.txt" , "r")
contains = f.readline
puts contains
f.close
#FILES -----------------------------------------

#FUNCTIONS -------------------------------------
def functionOne()
    puts "You called the empty function."
end

def functionTwo(passed)
    puts "You passed '#{passed}'"
end

#multiple params packed together
def functionThree(*passed)
    x, y, z = passed
    puts "Multple items passed: '#{x}', '#{y}', '#{z}.'"
end

functionOne()
functionTwo("I'm two!")
functionThree("I", "have", "stuff!")

#LOOPS ----------------------------------------
i = 0
while i < 5 do
    functionTwo(i)
    i += 1
end

a.each do |num|
    puts "from array 'a': #{num}"
end


#CLASSES -------------------------------------
class Person
    #This is a person class, which holds a person's name
    @@class_var = "Available across ALL persons"
    @name = ""
    def initialize(name)
        @name = name
    end

    def sayName()
        puts "My name is #{@name}.\n"
    end
end

jordan = Person.new("Jordan")
jordan.sayName
