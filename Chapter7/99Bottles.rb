n = 10

while n > 2
	puts (n.to_s + ' bottles of beer on the wall, ' + n.to_s + ' bottles of beer.')
	oneLess = n - 1
	puts ('Take one down and pass it around, ' + oneLess.to_s + ' bottles of beer on the wall.')
	n = n - 1
end
puts '2 bottles of beer on the wall, 2 bottles of beer.'
puts 'Take one down and pass it around,1 bottle of beer on the wall.'
puts '1 bottle of beer on the wall, 1 bottle of beer.'
puts 'Take one down, pass it around, no more bottles of beer on the wall.'