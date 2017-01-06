def shuffle origArray
	iterations = rand(10000) #number of times swap is going to happen
	count = 1
	while count <= iterations
		r1 = rand(origArray.length)
		r2 = rand(origArray.length)
		#swapping 2 values in the array
		temp = origArray[r1]
		origArray[r1] = origArray[r2]
		origArray[r2] = temp
		count = count + 1
	end
	origArray
end

allOggs = shuffle(Dir['**/*.ogg'])
File.open 'playlist.m3u', 'w' do |f| 
	allOggs.each do |x|
		f.write x + "\n"
	end
end