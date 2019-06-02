## rescue, ensure, else
## Exception -> StandardError -> RuntimeError


def read_file
	file = File.open('nonexistent')
	#raise SystemCallError, "Could not open the file!"
	puts "File was read or opened! #{file.read}"
	true
rescue SystemCallError => e
	puts "Exception has occured: #{e}"
	false
else
	puts "There were no exceptions!"
ensure
	puts "I was executed anyways!"
end

read_file

def read_if_present
	file = File.open('anothernonexistent')
rescue SystemCallError => e
	attempts ||= 0
	attempts += 1
	if attempts < 3
		puts "Trying again"
		retry
	else
		puts "Failed to read, reraising the exception"
		raise
	end
	puts "An exception has occured: #{e}"
	false
else
	puts "The file was read successfully: #{file.read}"
ensure
	puts "This was completed!"
end

read_if_present





