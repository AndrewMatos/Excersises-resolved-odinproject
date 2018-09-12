def substrings (string, array)
	string.downcase!
	stringarr =string.split(/[^A-Za-z]/).keep_if{|element| element != ""}
	sfromarr =array.join(" ")
	resulthash =Hash.new
	stringarr.each{ |element|
      if sfromarr.scan(/#{element}/).count != 0
      	 resulthash[element]=sfromarr.scan(/#{element}/).count
      end
	}
	array.each{ |element|
		if string.scan(/#{element}/).count != 0
      	 resulthash[element]=string.scan(/#{element}/).count
      end
	}
	print resulthash
end 

 dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
substrings("Howdy partner, sit down! How's it going", dictionary)