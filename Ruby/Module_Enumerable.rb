module Enumerable

	def my_each
	  i = 0
	  while i <(self.length) do 
        yield(self[i])
	  	i+=1  
	  end
	return self
	end

	def my_each_with_index
	  i = 0
	  while i <(self.length) do 
        yield(self[i], i)
	  	i+=1  
	  end
	return self
	end

	def my_select
		array =[]
		i =0
	  while i <(self.length) do 
	        if (yield(self[i]))
	        	array.push(self[i])
	        end
	  i+=1  
	  end
	return array
	end

	def my_all?
	i = 0
	res = true
		while i <(self.length) do
			if (yield(self[i])) == false
				res = false
			end
		i+=1
		end
	return res
	end

	def my_any?
	i = 0
	res = false
		while i <(self.length) do
			if (yield(self[i])) 
				res = true
			end
		i+=1
		end
	return res
	end
    
    def my_none?
	i = 0
	res = true
		while i <(self.length) do
			if (yield(self[i])) 
				res = false
			end
		i+=1
		end
	return res
	end

     def my_count (n=0)
	     i = 0
	     counter = 0
	     while i <(self.length) do
	     	if block_given?
				if (yield(self[i])) 
					counter+=1
				end
			elsif n == 0
			counter = self.length
			else 
			    if self[i]==n
			    	counter+=1
			    end
			end
		 i+=1
		 end
     return counter
     end

     def my_map (m=0)
     array =[]
	 i =0
	  while i <(self.length) do 
	  	    if block_given?
		    array.push(yield(self[i]))
			elsif m != 0
			array.push(m(self[i]))
		    else 
		    array.push(self[i])
		    end
	  i+=1  
	  end
	return array.to_a
     end

     def my_inject
      array = self.my_map{|element| element}.to_a
      res = 0
      count = 0
      i =0
      while i<(self.length-1) do
	       if i ==0
	        count = yield(array[i],array[-1])
	        #puts count
	        else 
	        count = yield(count,array[i])
	        #puts count
	       end
      i+=1
      end
     return count
     end

     def my_multiply 
      self.my_inject{|counter,element| counter *element}
     end

end 