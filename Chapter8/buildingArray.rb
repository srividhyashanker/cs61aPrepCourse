puts 'Hi! Please enter as many words as you want, and whenever you want to stop press enter twice, and then I will print out you words in alphabetical order!!'
wordsArray = []
loop do
	input = gets.chomp.downcase
	if input.empty?
		break
	end
	wordsArray.push(input)
end
puts wordsArray.sort
	