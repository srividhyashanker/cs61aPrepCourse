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
	print origArray
end
puts(shuffle([1,2,3,4,5,6,7,8,9]))