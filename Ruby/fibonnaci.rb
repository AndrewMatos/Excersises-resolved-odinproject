def fibs(n)
	arr=[1]
	m=0
	num=1
	while m <=n-2 do
	arr.push(num)
    num = arr[m]+arr[m+1]
    m+=1
	end
return arr
end

def  fibs_rec (arr,n)
   return  arr if  n ==0
    if arr.length <= 1 
      arr. push(1)
    else
   arr.push(arr[-1]+arr[-2])
    end
   fibs_rec(arr,n-1)
end

p fibs_rec([],9)