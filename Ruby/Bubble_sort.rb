def bubble_sort (arr)
	array = arr.collect{|element| element}
	count =0
	(array.length-1).times do
		 array.each_with_index do |element,index|
			if (array[index]<=>array[index+1]) == (1) 
				pp = array[index]
				array[index] = array[index+1]
				array[index+1]= pp
				count+=1
     		end 
		end
	break if count ==0
	end
    p count
    return count
end

#bubble_sort([4,3,78,2,0,2])

def bubble_sort_by(arr)
 	array = arr.collect{|element| element}
	count =0
	(array.length-1).times do
		 array.each_with_index do |element,index|
		 	if array[index+1] == nil
		 	break
			elsif (yield (arrayY = [array[index],array[index+1]]) ) > 0
				pp = array[index]
				array[index] = array[index+1]
				array[index+1]= pp
				count+=1
     		end 

		end
	break if count ==0
	end
    p array
    return count
end



   bubble_sort_by(["hi","hello","hey"]) do |left,right|
    left.length - right.length
   end