def old_roman_numeral(number)
    rn = ''
    if number == 0	
		rn = '0'
	end
	while number >= 1000
		number = number - 1000
		rn = rn + 'M'
	end
	while number >= 500
		number = number - 500
		rn = rn + 'D'	
	end
	while number >= 100
		number = number - 100
		rn = rn + 'C'
	end
	while number >= 50
		number = number - 50
		rn = rn + 'L'
	end
	while number >= 10
		number = number - 10
		rn = rn + 'X'	
	end
	while number >= 5
		number = number - 5
		rn = rn + 'V'
	end
	while number >= 1
		number = number - 1
		rn = rn + 'I'
	end
	print rn
	print ' '
end
puts 'Please enter a number!!'
answer = gets.chomp.to_i
old_roman_numeral answer
