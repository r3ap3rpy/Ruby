## lower level thread interface
# the developer has more fine graded control over the execution
#
# fiber.current # yield the current fiber
# fiber.yiel # yielding the control context which called .resume
# fiber.alive? # tests to see if the fiber is alive
# fiber.resume # starting the fiber
# fiber.transfer # transfers from the current fiber to the receiving fiber
require 'fiber'

fib = Fiber.new do |i|
	next_ = Fiber.yield i+= 1
	next_ += 1
end

a = fib.resume 1
puts a
b = fib.resume a + 2
puts b


another_fib = Fiber.new do |i|
	next_ = Fiber.yield i+=1
	next_ += 1
end

start_fib = Fiber.new do
	puts "Starting with 1"
	next_var = another_fib.transfer 1
	another_fib.transfer next_var
end

a = start_fib.resume
puts a
a = start_fib.transfer a
puts a
a = start_fib.transfer a
puts  a



