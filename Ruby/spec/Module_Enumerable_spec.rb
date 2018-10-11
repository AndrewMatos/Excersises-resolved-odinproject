require "./Module_Enumerable"

describe "my_each" do
	 it "gives uses block of code an it applies it to each element of an array" do
	 arr=[1,3,4,5,6]
	 arr2=[]
	 arr.my_each{|element| arr2.push(element)}
     expect(arr2).to eql([1,3,4,5,6])
    end	

end

describe "my_select" do
	it "return only the elements of the array that meet the conditions" do
	arr=[1,3,4,5,6]
	expect(arr.my_select{|element|  element<5 }).to eql([1,3,4])
	end
end

describe "my_all?" do
	it "returns true if all the elements of an a array meet the conditions of a block code " do
    arr=[1,3,4,5,6]
    expect(arr.my_all?{|element| element<7 }).to eql(true)
    end

    it "returns false if  one of the elements of an a array doesn't meet the conditions of a block code " do
    arr=[1,3,4,5,6]
    expect(arr.my_all?{|element| element<=5 }).to eql(false)
    end
end
