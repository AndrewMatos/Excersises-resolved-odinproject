class LinkedList
	attr_accessor :name
	attr_reader :head, :tail
	
	def initialize
		@head = nil
	    @tail = nil
	end

	def append(node)
		if @head== nil
			@head=node
		else 
			aux = @head
			while aux.next != nil 
				aux =aux.next
			end
			aux.next = node
		end
		@tail=node
	end

	def prepend(node)
		if @head== nil
			@head=node
			@tail=node
		else 
		   node.next = @head
		   @head = node
		end
    end

    def size
    	i = 0
    	aux = @head
    	while aux !=nil 
    		i+=1
    		aux =aux.next
    	end
    return i
    end

    def at(ind)
        i = 0
        aux = @head
        while i<= ind
	         if i != 0
	         	aux= aux.next
	         end
        i+=1
        end
    return aux
    end

    def pop
       aux = @head
    	while aux.next.next != nil
          aux = aux.next
    	end
    	aux.next = nil
    	@tail = aux
    end

    def contains?(value)
    	ans = false
    	aux = @head
         while aux != nil
         	if aux.data == value
         		ans = true
         	    break
         	end
         	aux = aux.next
         end
     return ans    
    end
     
     def find(value)
     	n = nil
     	i = 0
     	aux = @head
     	while aux != nil
     		if aux.data == value
     			n = i
     			break
     		end
     	aux = aux.next
     	i+=1
     	end
     return n
     end

     def to_s
     	s =""
     	aux = @head
     	while aux != nil
         s+="( #{aux.data} )->"
         aux = aux.next
     	end
     	s+="nil"
     end

     def insert_at(node,ind)
     	i = 0
     	aux = @head
     	if ind == 0
        	prepend(node)
        else 
		  	while aux.next != nil
		     	i+=1 
		     	  if i == ind
		     	  	node.next = aux.next
		     	  	aux.next = node
		     	  	break
		     	  end
		     	aux = aux.next
		    end

		    if i != ind
		     append(node)
		    end
        end 
     end

     def remove_at(ind)
	    begin 
	     	if ind == 0
	     	 c = @head.next
	     	 @head.next== @head.next.next if aux.next !=nil
	     	 @head= c

	     		
	     	else
		     	i = 0
		     	aux = @head
		     	while aux != nil
		     		if i+1 == ind
		     		# c = aux.next.next
		     		 #puts "c = #{c.data} "
		             
		             #puts "aux.next = #{aux.next.data}"
		             aux.next = aux.next.next
		             break
		     		end
		     	i+=1
		     	aux = aux.next
		     	end
	        end
	     rescue 
	       puts "node not found"
	     end 
     end

end

class Node
	attr_accessor :next, :data

	def initialize(data)
		@next=nil
		@data= data
	end	
end