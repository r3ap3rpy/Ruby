=begin
Fully OOP compliant
 - dynamic typing 
 	a = 10
	.
	.
	a = "string"
 - ductyping
 - functional and procedural programming
 - reflection 
 - meta programming
 - bytecode interpreted

Scoping
 - global  
 - local

@instance_variables
@@class_variable
$global_variable
CONTANTS

Operators
Logical 
 - and
 - or

Mathematical 
 + - * / % **

Arithmetic
 = <= >= != 
=end

puts "Numbers in Ruby"
puts "\tFixnum"
puts "\tBignum"
my_integer = 9999
puts my_integer
my_integer = 9999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999

puts "\tFloat"
my_float = 3.14
puts my_float

puts "\tComplex"
my_complex = 1.0e5

puts "\tBoolean"
my_bool = true 

puts "\tString"
my_string = "Learning Ruby is really fun!"
count = my_string.split(" ").count
puts "This sentence holds #{count} word#{count == 1? "." : "s."}!"
my_string = "Ruby is Fun"
puts my_string.upcase
puts my_string.downcase

