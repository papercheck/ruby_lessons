# array_extension.rb

class Array
	def sum	  
        total = 0
        self.each do |item|
          total += item
        end
        total
	end
end