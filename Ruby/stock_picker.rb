def stock_picker(array)
	arr_results =[]
	arr_Tresults =[]
	array.each{|n1|
		maxresult = 0
		arr1 = array[(array.index(n1)+1)..-1]
		arr1.each{|n2|
			arr_results.push(n2-n1)
			maxresult=arr_results.max
		}
		arr_Tresults.push(maxresult)
		arr_results=[]
	}

	buy = arr_Tresults.index(arr_Tresults.max)
	arrAB = array[(buy+1)..-1]
	sell = array.index(arrAB.max)
	arr3 =[buy,sell]
	puts "you should buy in day #{buy} and sell in day #{sell} \n so you can win a benefit of #{array[sell]} - #{array[buy]} = #{arr_Tresults.max}"
	
return arr3
end

 stock_picker([17,3,6,9,15,8,6,1,10])