hash = {} 
File.read('dates.txt').each_line do |line|
	line = line.chomp
	commaIndex = 0
	while line[commaIndex] != ',' && commaIndex < line.length
	   commaIndex = commaIndex + 1
	end
	name = line[0..(commaIndex - 1)]
	date = line[24..36]
	hash[name] = date
end
puts 'Whose birthday would you like to know?'
input = gets.chomp
puts hash[input]