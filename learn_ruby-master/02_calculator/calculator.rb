def add (n1,n2)
 return n1+n2
end

def subtract (n1,n2)
	return n1-n2
end

def sum(array)
 sum = 0 
 array.each do|number|
 	 sum+= number
 end
 return sum
end

def multiply(array)
	mum = 0
	array.each do|number|
		mum*= number
	end
return mum
end

def power (n1,n2)
	total = 1
	n2.times do
	 total*=n1
	end
return total
end

def factorial (n1)
    total = 1
	if n1 == 0 
		total = 1
	else
		i = n1
		loop do 
		 total*=i
		 i-=1
		 break if (i==0)
		end
	end
return total
end