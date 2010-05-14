# temperature.rb
module UsefulFeatures
	def float_correction(*args)		
		(args[0] * 10 ** 1).round.to_f / 10 ** 1
	end
end

class Temperature
	include UsefulFeatures
	def ctof(*args)
		f = 32.0 + ( 1.8 * args[0])		
		float_correction(f)
	end
	
	def ftoc(*args)
		c = (args[0] - 32.0)/1.8		
		float_correction(c)
	end
end