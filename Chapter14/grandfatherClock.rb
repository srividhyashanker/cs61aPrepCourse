def grandfatherClock &block 
	numOfHours = Time.new.hour
	if numOfHours >= 13
		numOfHours = numOfHours - 12
		#PM
	end
	if numOfHours == 0 
		numOfHours = 12
		#12 AM
	end 
	numOfHours.times do
		block.call
	end 
end


grandfatherClock do 
	puts 'DONG!'
end