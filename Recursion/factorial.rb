def factorial(array, num)
	array << num
	factorial(array, num - 1) if num > 0
	array.inject(:+)
end


puts factorial([], 9)
