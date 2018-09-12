number =0
m1 = 1
m2 = 0

5.times do 
	m2+=m1
	number+=m2 if (m2%2==0)
	m1+=m2
	number+=m1 if (m1%2==0)
end

puts number
