puts 'Please enter a starting year!'
startYear = gets.chomp.to_i
puts 'Please enter an ending year!'
endYear = gets.chomp.to_i
year = startYear
puts 'Here are the years in between that are leap years!'
while (year >= startYear) && (year <= endYear)
	if (year%4 == 0 && year%100 != 0 or year%100 == 0 && year%400 ==0)
		puts year
	end
	year = year + 1
end