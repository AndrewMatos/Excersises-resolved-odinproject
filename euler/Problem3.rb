integer = 13195
primeArray = []
isPrime = true
i = 2
while i <=integer do 
	if (integer % i== 0)
		j = 2 
		while j <= i/2 do
			if  i % j == 0
			isPrime =false
			else
			isPrime = true	
			end
		j+=1
    	end
    if isPrime==true
    	integer /=i	
    	primeArray << i
		end
	end
i+=1
end

puts primeArray