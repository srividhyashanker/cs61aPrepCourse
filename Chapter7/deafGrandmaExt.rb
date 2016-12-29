puts 'Hi, this is grandma speaking!'
input = gets.chomp
count = 0 
while count != 3
	if input == 'BYE'
     	count = count +1
	end
	if input != input.upcase
		puts 'HUH?!  SPEAK UP, SONNY!'
		input = gets.chomp
	else
		year = rand(100) + 1900
		puts 'NO, NOT SINCE ' + year.to_s + '!'
		input = gets.chomp
	end
end