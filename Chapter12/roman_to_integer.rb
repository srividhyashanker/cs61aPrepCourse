def roman_to_integer roman

dict_hash = {}
dict_hash['i'] = 1
dict_hash['v'] = 5
dict_hash['x'] = 10
dict_hash['l'] = 50
dict_hash['c'] = 100
dict_hash['d' ] = 500
dict_hash['m'] = 1000

total = 0
prev = 0
index = roman.length - 1 
x=0

while index >= 0
	found = false
	value = roman[index].downcase 
	index = index -1
	dict_hash.each do |romNum, num| 
		if value == romNum
			x = num
			found = true
		end
	end
	if found == false
		puts 'This is not a valid roman numeral!!'
		return
	end
	if x < prev	
		x = x - (2*x)
	else
		prev = x
	end
	total = total + x	
end

print total

end
puts(roman_to_integer 'CDXXXI')
puts(roman_to_integer 'MDCLII')
puts(roman_to_integer 'a')

		
		
		
		

