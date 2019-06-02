module TestModule
	CONST = 11
end


module TestModule::InnerModule
	CONST = 12
end


class TestClass
	include TestModule
	def const
		CONST
	end
end

a = TestClass.new
puts a.const

module ClassModule
	class TestClass
		@@CONST = 99
		def const 
			@@CONST
		end
	end
end


