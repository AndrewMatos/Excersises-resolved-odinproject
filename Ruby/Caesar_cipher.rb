

def caesar_cipher(string, num)
	arr = string.each_byte.to_a
	arr2 =[]
    
	arr.each{|element| 
		if (65..90)===element || (97..122)===element
		  e = num
		  n = element
		  if e>0
		  until e==0
			  n+=1
			  e-=1
			  if n>90 && n<97
			  n = n-90+64
			  elsif n<65
			  n = 91-(65-n)
			  elsif n>122
			  	n = n-122+96
			  end
		   end
		  elsif e<0
		  	 until e==0
			  n -=1
			  e+=1
			  if n>90 && n<97
			  n = n-90+64
			  elsif n<65
			  n = 91-(65-n)
			  elsif n>122
			  	n = n-122+96
			  end
		   end
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

#caesar_cipher("What a string!", 5)