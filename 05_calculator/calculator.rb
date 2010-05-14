# calculator.rb

module UsefulFeatures
	def length_count(*args)
		if args.length == 1
			y = args[0]						
		else
			y = args						
		end			
	end
end

class Calculator
	include UsefulFeatures
	
	def add(*args)
		args[0].to_f + args[1].to_f
	end
	
	def subtract(*args)
		args[0].to_f  - args[1].to_f
	end
	
	def sum(*args)
		y = length_count(*args)
		c = 0
		y.length.times do |x|			
			c = y.at( x )  + c
		end
		c
	end

	def multiply(*args)			
		y = length_count(*args)
		c = 1
		y.length.times do |x|			
			c = y.at( x )  * c
		end
		c
	end
	
	def exponent(*args)
		y = length_count(*args)
		c = 1
		y.length.times do |x|			
			c = y.reverse.at( x )  ** c
		end
		c
	end	
	def factorial(*args)	
		args[0] != 0? c = 1 : c = 0
		args[0].times do |x|			
			c *= (x+1)			
		end
		c
	end
end