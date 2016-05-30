def bubble_sort (array)
i=0
	while i < array.size-1
	
		0.upto(array.size-i) do |index|
			if index+1<array.size
				if array[index] > array[index+1]  
					bubble=array[index]
					array[index]=array[index+1]
					array[index+1]=bubble
				end
			end
		end
		
		i+=1
	end
return array
end



def  bubble_sort_by (array)
i=0
	while i < array.size-1
		0.upto(array.size-i) do |index|
			if index+1<array.size
			
				left=array[index]
				right=array[index+1]
				response=yield ([left,right])
			
				if (response <=> 0) ==-1 
					array[index]=right
					array[index+1]=left
				end

			end
		end	
		i+=1
	end
return array
end