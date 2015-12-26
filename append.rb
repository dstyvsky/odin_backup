def append( ary, n)
	x = 0
	while x < n + 1 do 	
		ary << x
		x += 1
	end
	ary


end

puts

def reverse_append(ary, n)
	reverse_append(ary, n - 1) if n >= 1
	ary << n
	
	ary
end


puts reverse_append [], 10

