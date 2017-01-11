class Array
	def shuffle 
		origArray = self
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
end

class Integer
	def factorial
		if self <= 1 
			return 1
		else
		  return self * (self-1).factorial
		end 
	end
	def roman_numeral
		rn = ''
		if self == 0	
			rn = '0'
		end
		while self >= 1000
			self - 1000
			rn = rn + 'M'
		end
		while self >= 900
			self - 900
			rn = rn + 'CM'
		end
		while self >= 500
			self - 500
			rn = rn + 'D'	
		end
		while self >= 400
			self - 400
			rn = rn + 'CD'
		end
		while self >= 100
			self - 100
			rn = rn + 'C'
		end
		while self >= 90
			self - 90
			rn = rn + 'XC'
		end
		while self >= 50
			self - 50
			rn = rn + 'L'
		end
		while self >= 40
			self - 40
			rn = rn + 'XL'
		end
		while self >= 10
			self - 10
			rn = rn + 'X'	
		end
		while self >= 9
			self - 9
			rn = rn + 'IX'
		end
		while self >= 5
			self - 5
			rn = rn + 'V'
		end
		while self >= 4
			self - 4
			rn = rn + 'IV'
		end
		while self >= 1
			self - 1
			rn = rn + 'I'
		end
		rn
	end
end


puts [1,2,3,4,5,6,7,8,9,10,11].shuffle
puts ' '
puts  5.factorial
puts ' '
puts 7.roman_numeral
