def flatten(array, result)
		array.each do |part| 
			 if part.length == 1
			 	result << part
			 else
			 	flatten(part.slice(0), result)



			 end
		end
		result
end


print flatten([[1, 2], [3, 4]], [])
print flatten([[1, [8, 9]], [3, 4]], [])


#not working