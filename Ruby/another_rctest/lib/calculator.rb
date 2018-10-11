class Calculator

	def add(*args)
		if args.length==0
		return 0
		elsif args.length==1
			return args[0]
		else
		   return args.reduce{|total,element| total+element}
		end
	end

	def divide (*args)
		if args.length==0
		return 0
		elsif args.length==1
			return args[0]
		else
		   return args.reduce{|total,element| total/element}
		end
	end

end