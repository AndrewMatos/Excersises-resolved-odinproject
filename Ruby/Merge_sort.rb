def merge (arr1, arr2)
	arr=[]
	while arr1.length>0 && arr2.length>0 do
		if arr1[0]<=arr2[0]
			arr.push(arr1.shift)
	    elsif arr2[0]<=arr1[0]
	    	arr.push(arr2.shift)
	    end 
	end
	if arr1.length==0 
    arr+=arr2
    elsif arr2.length==0
    arr+=arr1
    end
 return arr
end


def merge_sort (arr)  
    narr = arr
	if narr.length<2
	  return narr
	else 
      arr1= narr.slice!(0,narr.length/2)
     # p arr1
     #p narr
      arr1= merge_sort(arr1)
     # p arr1
      arr2= merge_sort(narr)
     # p arr2
     newarr=merge(arr1,arr2)
    end
return newarr
end

p merge_sort([4,8,6,2,1,7,5,3])