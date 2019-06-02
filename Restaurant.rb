require '.\\MetaProgramming'


cook "chickensoup"

cook "chickensoup" do
	puts "Preparing to cook chichen soup!"
end

before "chickensoup" do 
	puts "Some slicing and preparation"
end

after "chickensoup" do
	puts "Some cleaning and serving"
end

puts "The whole as one! --------------------"

run('chickensoup')
