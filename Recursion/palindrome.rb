def palindrome?(bool, word)
=begin
	puts "#{bool} here"
	puts word.length
	puts word
=end


	if word.length/2 >= 1
		if word[0] == word[-1]
			#puts "passed by"
			palindrome?(true, word[1..-2])
		else
			bool = false
		end	
	else
		bool = true
	end
	

end


puts palindrome?(false, "osoa")