puts "Enter words. Hit enter on a blank line when finished."
choice = 'what'
answer = []
cycle = 0
while choice != ''
	choice = gets.chomp
	answer.push choice
end

answer.sort!

while cycle < answer.length
	puts answer[cycle]
	cycle = cycle + 1
end
