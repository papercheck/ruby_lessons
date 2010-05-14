# timer.rb

module UsefulFeatures
	def format_string(*args)
		sec = args[0]/60
		min =sec
		hour = min
		format_this = [sprintf("%02d", hour),sprintf("%02d", min),sprintf("%02d", sec)]
		format_this.join("|").to_s		
	end
end

class Timer
	include UsefulFeatures

	def initialize
		@seconds = 0
	end	

	def seconds
		@seconds
	end
    def seconds=(k)
       @seconds = k
    end
    def time_string
      format_string (@seconds)
	end
end