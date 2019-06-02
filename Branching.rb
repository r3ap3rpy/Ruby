count = 10

if count > 10
	puts "This is bigger than 10"
elsif count < 10
	puts "This is less than 10"
else
	puts "This is 10"
end

result = if count < 10 
		 "This is less than 10"
	 elsif count > 10
		 "This is greater than 10"
	 else
		 "This is 10"
	 end

puts "The result is : #{result}"
count = 99
case count 
when 10 then puts "The result is 10"
when 11 then puts "This is eleven"
else puts "This is other than expected"
end

result = case count
	 when 10 
		 "this is 10"
	 when 11 
		 "This is 11"
	 else 
		 "This cannot be"
	 end

puts "The result is : #{result}"

count = 25

unless count < 25
	puts "This is bigger than 25"
end

results ||= "bigger" unless count < 24
puts "The result is #{results}" 

puts "This is bigger" if count > 24
puts "This is bigger" unless count < 24

