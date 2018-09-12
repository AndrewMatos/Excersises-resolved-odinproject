number = 0
i = 0 

999.times do
	i=i+1
	if (i%3==0 || i%5==0)
	number+=i
	end
end

puts number