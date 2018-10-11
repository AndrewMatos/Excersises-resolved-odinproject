require "./lib/calculator"

describe Calculator do
	describe "#add" do
		it "takes 2 integers and returns the sum"do
		cal= Calculator.new
		expect(cal.add(2,5)).to eql(7)
		end

		it "takes any number of integers and return the sum"do
		cal= Calculator.new
		expect(cal.add(2,5,8,9)).to eql(24)
	    end
	end 

	describe "#divide" do
		it "takes 2 integers and returns the division" do
		cal = Calculator.new
		expect(cal.divide(10,2)).to eql(5)
		end
	end

end
