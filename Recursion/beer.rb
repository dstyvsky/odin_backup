def beer(bottles)
	puts "#{bottles} bottles of beer on the wall"
	bottles > 1 ? beer(bottles - 1) : "no more beer"
end


puts beer(100)