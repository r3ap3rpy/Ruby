require '.\\module'

puts "TestModule::CONST = #{TestModule::CONST}"

puts "TestModule::InnerModule::CONST = #{TestModule::InnerModule::CONST}"

a = ClassModule::TestClass.new
puts "COnst from class inside  a module: #{a.const}"
