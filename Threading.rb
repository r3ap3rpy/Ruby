even_thread = Thread.new do
	i = 0
	loop do
		if i.even?
			puts "Even thread: #{i}"
		end
		i += 1
		Thread.stop
	end
end

odd_thread = Thread.new do
	j = 0
	loop do
		unless j.even?
			puts "Odd thread: #{j}"
		end
		j += 1
		Thread.stop
	end
end

puts "Starting main thread!"
time = 0
while time < 10 do
	puts "The seconds elapsed: #{time}"
	even_thread.run
	odd_thread.run
	sleep 1
	time += 1
end

