def old_roman_numeral(number)
    rn = ''
    if number == 0	
		rn = '0'
	end
	while number >= 1000
		number = number - 1000
		rn = rn + 'M'
	end
	while number >= 900
		number = number - 900
		rn = rn + 'CM'
	end
	while number >= 500
		number = number - 500
		rn = rn + 'D'	
	end
	while number >= 400
		number = number - 400
		rn = rn + 'CD'
	end
	while number >= 100
		number = number - 100
		rn = rn + 'C'
	end
	while number >= 90
		number = number - 90
		rn = rn + 'XC'
	end
	while number >= 50
		number = number - 50
		rn = rn + 'L'
	end
	while number >= 40
		number = number - 40
		rn = rn + 'XL'
	end
	while number >= 10
		number = number - 10
		rn = rn + 'X'	
	end
	while number >= 9
		number = number - 9
		rn = rn + 'IX'
	end
	while number >= 5
		number = number - 5
		rn = rn + 'V'
	end
	while number >= 4
		number = number - 4
		rn = rn + 'IV'
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