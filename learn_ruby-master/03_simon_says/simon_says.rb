#write your code here
def echo (word)

return word

end

def shout (word)
 return word2 = word.upcase
end

def repeat (word , n=2)
word2 = (word + " ") * n
word2 = word2.chomp(" ")
return word2
end 

def start_of_word (word, n)
   word2 = ""
   i = 0
    n.times do
		word2+= word[i]
		i+= 1
	end
return word2
end

def first_word (word)
 n = word.index(" ")
 word2 = word[0,n]
return word2
end 

def titleize (word)
	array = word.split(" ")
	
	 array.each  do  |a|
		if ( a != "this" && a != "and" && a != "over" && a != array[0] )
		a.capitalize!
		end
	end
	array[0].capitalize!
   word = array.join(" ")
return word
end