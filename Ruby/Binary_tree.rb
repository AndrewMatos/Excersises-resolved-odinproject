class Binary_tree
	attr_accessor  :root 
     
     def initialize
        @root = nil
     end

 
	
	def build_tree(arr,par=nil)
		#puts "starts"
	    if arr == nil || arr[0] ==nil 
	       return nil
	       #return nil
	    elsif  arr.length == 1
		  c=arr[0]
		  pa = par
		  node= Node.new(c, pa)
	    else
	     middle = ((arr.length)/2).round
	     c=arr[middle]
	     pa = c

		   
		     if arr[middle+1]!= nil && arr[middle+1] < c
		     	
		        l = arr[middle+1..-1]
		        if arr[middle-1]!= nil && arr[middle-1] >c
		     	r = arr[0...middle]
		         else 
                l += arr[0...middle]
		        end
		     else 
		     	r = arr[middle+1..-1]
		     	if arr[middle-1]!= nil && arr[middle-1] >c
		     	r += arr[0...middle]
		        else 
                l = arr[0...middle]
		        end
		     end
		    
	     lc =build_tree(l,pa)
	     rc =build_tree(r,pa)
	         if par==nil
	         	pa = nil
	         end
	     node=Node.new(c,pa,lc,rc)
	    end 
      return node

	end

	def breadth_first_search (root, value)
		n = nil
		i = 0
		arr=[]
		#arr2=[]
		aux = root
		arr.push(aux)
		while i <= root.nodes_num 
		if arr[0].childleft != nil
		  arr.push(arr[0].childleft)
	    end
	    if arr[0].childright != nil
		   arr.push(arr[0].childright)
	    end
        if arr[0].value == value
        	n = arr[0]
        	break 
        end
        arr.shift
		#arr2.push(arr.shift.value)
		i+=1	
		end
	   if n != nil
	   	return "node #{n.value} child of #{n.parent} "
	   else 
	   	return n
	   end
   end

   def depth_first_search_post_order (root,value)
   	 n = nil
   	 i = 0
   	 arr=[]
   	 arr2=[]
   	 arr3=[]
   	 aux = root 
   	 arr.push(aux)

   	 until arr[0] == nil

	   	 	until  arr[-1].childleft == nil
	   	 	   if  !arr2.include?(arr[-1].childleft)
	   	 	   arr.push(arr[-1].childleft) 
	   	 	   else 
	   	 	   break 
	   	 	   end
	   	 	end    
             
            until  arr[-1].childright == nil
              if  !arr2.include?(arr[-1].childright)
	   	 	   arr.push(arr[-1].childright) 
	   	 	   else 
	   	 	   break  
	   	 	  end
	   	 	end

           arr2.push(arr.pop)
           if arr2[-1].value == value
           	n = "value #{arr2[-1].value} his parent is #{arr2[-1].parent}"
           	break
           end
   	  end
        
     arr2.each do |element|
     	arr3.push(element.value)
     end
  	#return arr3
    return n
   end

   def dfs_rec (root, value )

   	if root.value ==value 
       
    puts  "value #{root.value} of parent #{root.parent}"
    return root
    else

	    if  root.childleft == nil &&  root.childright == nil
	    	 #puts root.value
	    	# arr.push(root.value)
	    	return 

	    end 
	    #puts root.value
	     if root.childleft != nil
	     l = dfs_rec(root.childleft,value ) 
	     end 


	     #puts "popo"
	     #puts root.value
	      #if root.childright != nil
	     if root.childright != nil
	     r =   dfs_rec(root.childright,value )
	     end
	     ##puts "popo"
	     # end
	
    #p arr  
	     if l !=nil
	     return  l
	     elsif r !=nil
	     return r
	     end	
    end
  end


	class Node
    
    attr_accessor :value, :parent, :childleft, :childright 

         @@nodes_number = 0
	   
	    def initialize(value,parent=nil,child1=nil, child2=nil)
	    	@value=value
	    	@parent=parent
	    	@childleft=child1
	    	@childright=child2
            @@nodes_number +=1
	    end

	    def nodes_num
	    	@@nodes_number
	    end

	end

	
end

newtree=Binary_tree.new

arr = [1,3,4,6,7,8,10,13,14]

#arr = [6,3,4,7,10,1,13,14,13]

#arr = [1, 7, 4, 23, 8, 9, 4, 3, 5, 7, 9]

#arr = [1, 7, 4, 23, 8, 9, 4, 3, 5, 7, 9, 67, 6345, 324]

nde = newtree.build_tree(arr)
 p arr
 #puts newtree.breadth_first_search(nde,8)
# p newtree.depth_first_search_post_order(nde,8)
p newtree.dfs_rec(nde,8)
#p newarr= newtree.dfs_rec(nde,8).map do |element|
#return element.value
#end

#puts nde.nodes_num




def lol (thing)
	if thing != nil
	return thing.value
    else
    return "-"
    end
end



a = lol(nde)

b = lol(nde.childleft )
 
c = lol(nde.childright)

d = lol(nde.childleft.childleft)

e = lol(nde.childleft.childright)

g = lol(nde.childright.childleft)

h = lol(nde.childright.childright)

j = lol(nde.childleft.childleft.childleft)

i = lol(nde.childleft.childleft.childright)
 
k = lol(nde.childleft.childright.childleft)

m = lol(nde.childleft.childright.childright)

ñ = lol(nde.childright.childleft.childleft)

n = lol(nde.childright.childleft.childright)

pp = lol(nde.childright.childright.childleft)

q = lol(nde.childright.childright.childright)


puts "                 #{a}               "
puts "              /      \\            "
puts "             #{b}       #{c}         "
puts "            /  \\    /  \\        "
puts "           #{d}   #{e}   #{g}   #{h}       "
puts "          /\\   /\\  /\\   /\\                              "
puts "         #{j} #{i}  #{k} #{m}  #{ñ} #{n}  #{pp} #{q}"

#puts nde.childright.childleft.childright.childleft.value

#=end