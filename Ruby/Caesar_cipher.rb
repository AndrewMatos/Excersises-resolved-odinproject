def caesar_cipher(string, num)
	arr = string.each_byte.to_a
	arr2 =[]
	arr.each{|element| 
		if (65..90)===element || (97..122)===element
		  n = element+num
		  if n>90 && n<97
		  n = n-90+64
		  elsif n>122
		  	n = n-122+96
		  end 
		  arr2.push(n.chr)
		else 
          arr2.push(element.chr)
		end
	}
	fstring=arr2.join("")
	print fstring
return fstring
end

caesar_cipher("What a string!", 5)