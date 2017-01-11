def englishNumber number
	if number < 0
		return 'Please enter a number that isn\'t negative.' 
	end
	if number == 0 
		return 'Zero'
	end
	ones_place = ['one',       'two',      'three', 'four',      'five',     'six', 'seven',     'eight',    'nine']
	tens_place = ['ten',       'twenty',   'thirty', 'forty',     'fifty',    'sixty','seventy',   'eighty',   'ninety']
	teenagers  = ['eleven',    'twelve',   'thirteen', 'fourteen',  'fifteen',  'sixteen', 'seventeen', 'eighteen', 'nineteen']
	left = number
	num_string = '   '
	write = left/(10 ** 15)
	left = left - write*(10**15)
	if write > 0
		quadrillion = englishNumber write
		num_string = num_string + quadrillion + ' quadrillion'
		if left > 0
			num_string = num_string + ' '
		end
	end
	write = left/(10 ** 12)
	left = left - write*(10**12)
	if write > 0
		trillion = englishNumber write
		num_string = num_string + trillion + ' trillion'
		if left > 0
			num_string = num_string + ' '
		end
	end
	write = left/(10**9)
	left = left - write*(10**9)
	if write > 0
		billion = englishNumber write
		num_string = num_string + billion + ' billion'
		if left > 0
			num_string = num_string + ' '
		end
	end
	write = left/(10**6)
	left = left - write*(10**6)
	if write > 0
		million = englishNumber write
		num_string = num_string + million + ' million'
		if left > 0
			num_string = num_string + ' '
		end
	end
	write = left/(10**3)
	left = left - write*(10**3)
	if write > 0
		thousand = englishNumber write
		num_string = num_string + thousand + ' thousand'
		if left > 0
			num_string = num_string + ' '
		end
	end
	write = left/(100)
	left = left - write*100 
	if write > 0
		hundred = englishNumber write
		num_string = num_string + hundred + ' hundred'
		if left > 0
			num_string = num_string + ' '
		end
	end
	write = left/10 
	left = left - write*10
	if write > 0
		if ((write == 1) and (left > 0))
			num_string = num_string + teenagers[left-1]
			left = 0
		else
			num_string = num_string + tens_place[write-1]
		end
		if left > 0
			num_string = num_string + '-'
		end
	end
	write = left
	left = 0
	if write > 0
		num_string = num_string + ones_place[write-1]
	end
	num_string
end

n = 999

while n > 2
	puts (englishNumber(n).to_s + ' bottles of beer on the wall, ' + englishNumber(n).to_s + ' bottles of beer.')
	oneLess = n - 1
	puts ('Take one down and pass it around, ' + englishNumber(oneLess).to_s + ' bottles of beer on the wall.')
	n = n - 1
end
puts '2 bottles of beer on the wall, 2 bottles of beer.'
puts 'Take one down and pass it around,1 bottle of beer on the wall.'
puts '1 bottle of beer on the wall, 1 bottle of beer.'
puts 'Take one down, pass it around, no more bottles of beer on the wall.'
