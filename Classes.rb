## class_attributes @@var
## instance_attirbutes @var
## private, public, protected
#
class BaseLanguage 
	def deploy 
		puts "The language was deployed!"
	end
end
class Language < BaseLanguage
	attr_accessor :name, :version
	@@children = 0
	def initialize(name, version)
		@name = name
		@version = version
		@@children += 1
	end
	def self.children
		@@children
	end
	def ==(other)	
		name == other.name
	end
end

A = Language.new("Ruby","2.5.5")
D = Language.new("Ruby","2.5.4")
B = Language.new("Python","3.8")
C = Language.new("Go","10.10")

puts A
puts A.name
puts A.version
print B.name, B.version
puts
print C.name, C.version
puts
puts Language.children
A.deploy

if A == D
	puts "The two languages have the same name!"
end
