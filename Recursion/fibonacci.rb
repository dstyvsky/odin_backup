def fibonacci(array, x, num)
	#print array
	array << array[-1] + x
	x = array[-2]
	fibonacci(array, x, num) if array.length  < num
	array[-2]
end


puts fibonacci([1], 1, 100)