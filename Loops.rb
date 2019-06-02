# while, until, for, loop
# break, next, redo

for i in [1,2,4,4,5,6,7]
	puts "For i = #{i}"
end

for i in (1..10)
	puts "For range i = #{i}"
end


i = 0
while i < 10
	puts "While i = #{i}"
	i += 1
end

i = 0
until i > 10
	puts "Until i = #{i}"
	i += 1
end

i = 0

loop do 
	puts "Infinity i = #{i}"
	if i > 10 
		break
	end
	i += 1
end

i = 0
begin
	puts "Begin End i = #{i}"
	i += 1
end while i < 10

for i in (1..10)
	if i.even?
		next
	end
	puts "I = #{i}"
end

i = 0
while i < 3
	puts "Enter a number"
	number = gets.to_i
	redo if number <= 0
	i += 1
	puts "Got the #{i} number: #{number}"
end
