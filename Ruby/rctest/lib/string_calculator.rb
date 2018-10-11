class StringCalculator
	def self.add(input)
		if input ==""
		return 0
	    else 
	    arr= input.split(/\D/)
		    if arr.length == 1
		    return arr[0].to_i
		    else
	         return arr.reduce{|total,element| total.to_i + element.to_i }   
		    end
		end
	end
end