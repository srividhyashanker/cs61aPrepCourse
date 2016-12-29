puts 'Hi, this is grandma speaking!'
input = gets.chomp
while input != 'BYE'
	if input != input.upcase
		puts 'HUH?!  SPEAK UP, SONNY!'
		input = gets.chomp
	else
		year = rand(100) + 1900
		puts 'NO, NOT SINCE ' + year.to_s + '!'
		input = gets.chomp
	end
end