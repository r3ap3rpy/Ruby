def hello
	puts "Welcome to my ruby course!"
end

a = hello
puts a.class
def hello 
	"Welcome to ny ruby course!"
end

b = hello
puts b


def multiply a,b
	a * b
end

c = multiply(10,20)
puts "C = #{c} which is 10 * 20"

def kwargs *arguments
	arguments
end

d = kwargs(a: 10, b: 20)
puts d

def posnkwargs a, *kwargs
	puts "a = #{a}"
	puts kwargs
end
posnkwargs(10, a: 20, b: 30, c: 40)


def wrapper
	puts "Starting execution of block"
	yield
	puts "End of execution of block"
end

wrapper do 
	puts "Ruby is cool"
end


