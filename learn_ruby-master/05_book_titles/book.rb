class Book

    
   #initialize = The initialize method is a special type of method, which will be executed when the new method of the class is called with parameters.
   #it give initial value to the instace values using local values or nil if doesnt usse with anything
	 def initialize
	 	@title
	 end

	 #Method getter = A getter method retrieves the value of an instance variable from an object
	 #you could write it as=  attr_reader :title (is shorter)
	 def title 
	 	@title
	 end
     
     #Method setter = A setter method establishes or reestablishes the value for an instance variable. 
	 #you could write as= attr_writer :title (is shorter)
	 def title=(value)
	 	@title = titleize (value)
	 end

	 #you could write attr_writer and reader  as = attr_accessor :tittle


	def titleize (word)
		array = word.split(" ")
		array.each  do  |a|
			if ( a != "this" && a != "and" && a != "over" && a != "a" && a != "an" && a != "in" && a != "this" && a != "the" && a != "of" && a != array[0] )
			a.capitalize!
			end
		end
		array[0].capitalize!
	    word = array.join(" ")
	    return word
	end
end


