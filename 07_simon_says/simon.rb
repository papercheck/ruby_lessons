# simon.rb

class Simon
	def echo(*args)
		args.count.times do |x|
			return args[x-1]
		end
	end	
	def shout(*args)
		args.count.times do |x|
			return args[x-1].upcase
        end
 	end
	def repeat(*args)	
		r = ""
		args[1].nil?? c = 2 : c = args[1] 
		c.times do |x|
			r = "#{r}" + "#{args[0]} "
		end
		return r.strip
	end
	def start_of_word(*args)						
		c = args[1] 
		a = args[0].split(//)
		r = ""
		c.times do |x|
			r << a[x]
		end
		return r
	end
	def first_word(*args)
		a = args[0].split
		return a[0]
	end
end


