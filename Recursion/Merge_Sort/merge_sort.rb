def merge_sort(first)
	return first if first.length == 1
	middle = first.length/2
	
	second = merge_sort(first[0..middle-1])
	third = merge_sort(first[middle..-1])

	final_array = []

	while second.length > 0 && third.length > 0 
		if 


end


puts merge_sort([5,1,2,7,3,5,2,6,4,2])