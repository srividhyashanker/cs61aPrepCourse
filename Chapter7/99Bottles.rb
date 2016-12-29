n = 3
while n > 1
	puts (n.to_s + ' bottles of beer on the wall, ' + n.to_s + ' bottles of beer.')
	oneLess = n - 1
	puts (' Take one down and pass it around, ' + oneLess.to_s + ' bottles of beer on the wall.')
	n = n - 1
end
puts '1 bottle of beer on the wall, 1 bottle of beer.'
puts 'Take one down and pass it around, no more bottles of beer on the wall.'
puts 'No more bottles of beer on the wall, no more bottles of beer.'
puts 'Go to the store and buy some more, 99 bottles of beer on the wall.'