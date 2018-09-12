def translate(string)

	array =string.split(" ")
	array2 = []



		def piglatin (a)

			b = " "
			c = " "

			if (a[0] == "q")
				b =a.slice(0,a.index("qu")+2)
				c =a.slice(a.index("qu")+2,-1)
				e = c.concat("",b)
				e = e.concat("","ay")
				array2.push(e)

			elsif (a[0] != "a" && a[0] != "e" && a[0] != "i" && a[0] != "o" && a[0] != "u" && a[0] != "q" )
				i = 0
				loop do
					if (a[i] == "q" ) 
						b = a.slice(0,a.index("qu")+2)
						c =a.slice(a.index("qu")+2,-1)
						break
					elsif (a[i] == "a" ) 
						b = a.slice(0,a.index("a"))
						c =a.slice(a.index("a"),-1)
						break	
					elsif (a[i] == "e" ) 
						b = a.slice(0,a.index("e"))
						c =a.slice(a.index("e"),-1)
						break	
					elsif (a[i] == "i" ) 
						b = a.slice(0,a.index("i"))
						c =a.slice(a.index("i"),-1)
						break	
					elsif (a[i] == "o"  ) 
						b = a.slice(0,a.index("o"))
						c =a.slice(a.index("o"),-1)
						break	
					elsif (a[i] == "u" ) 
						b = a.slice(0,a.index("u"))
						c =a.slice(a.index("u"),-1)
						break	
					end
				e = c.concat("",b)
				e = e.concat("","ay")
				array2.push(e)
				i+=1
				break if (i== a.length-1)
				end
			
			else 
			e = a.concat("","ay")
			array2.push(e)
			end

		end


	array.each do |a|
		a.piglatin
	end
	kk = array2.join (" ")
 return array2
end

