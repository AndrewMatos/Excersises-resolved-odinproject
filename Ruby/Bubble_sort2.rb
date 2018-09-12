def bubble_sort (arr)
    new_arr = arr
    count = 0
    new_arr.length.times do |i|
        (new_arr.length - 1).times do |j|
           if new_arr[i] < new_arr[j] 
           	 new_arr[i],new_arr[j] = new_arr[j],new_arr[i] 
           	 count+= 1
           end

        end
    end    
    p count
return count
end


bubble_sort([4,3,78,2,0,2])