class Timer

	def initialize
		@seconds = 0
	end

	attr_reader :seconds

	def seconds= (value)
		@seconds= value
	end
	
	def time_string
	   string = "00:00:00"
	   array = string.split(":")
	   s= @seconds % 60
	   s= s.ceil
	   s=s.to_s
	   if s.length < 2
	       s= "0"+s
	   end
	   m= @seconds / 60
	   if m> 60
	       m= m-60
	   end
	   m = m.ceil
	   m = m.to_s 
	   if m.length < 2
	       m= "0"+m
	   end
	   h = @seconds / 3600
	   h = h.ceil
	   h = h.to_s
	   if h.length < 2
	       h= "0"+h
	   end
	   array[0]=h 
	   array[1]=m
	   array[2]=s
	   string = array.join(":")
	   return string
    end
end