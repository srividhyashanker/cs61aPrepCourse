def dictSort origArray
	count, x = 0, 0
	while count <= origArray.length-1
		#smallest = origArray[count]
		x=count+1
		while x <=origArray.length-1
			a = origArray[count]
			b = origArray[x]
			if a.downcase > b.downcase
				origArray[count], origArray[x] = origArray[x], origArray[count]
			end
			x=x+1
		end
		count = count +1
	end
	print origArray
end		
puts(dictSort(['d', 'C', 'b', 'a', 'E', 'f']))
