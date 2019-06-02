## lamda function
# strict about argument
# return to the caller
#
## procs
# not strict about arguments
# cannot return

lmbd = lambda {|message| "I am lambda and thi is the message #{message}" }
puts lmbd.call("Ruby lambdas are cool!")
another_lambda  = -> (message) {"This is another lambda!: #{message}"}
puts another_lambda.call("Another lambda!")


procs = Proc.new {|message|"THis is the proc message: #{message}"}
puts procs.call("An argument")

shortproc = proc {|message|"This is the short proc message: #{message}"}
puts shortproc.call("short message")


def hello(&block)
	puts "This the before the block"
	block.call
	puts "This is after the block"
end

hello {puts "this is the message"}

