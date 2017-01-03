def ask(question)
	while true
		puts question
		reply = gets.chomp.downcase
		if reply == 'yes'
			return true 
		end
		if reply == 'no'
			return false 
		end
		puts "Please answer yes or no"
 	end
end

puts 'Hello, and thank you for...'
puts
ask 'Do you like eating tacos?'
wets_bed = ask 'Do you wet the bed?'
ask 'Do you like eating sopapillas?'
puts 'Just a few more questions...'
ask 'Do you like drinking horchata?'
ask 'Do you like eating flautas?'
puts
puts 'DEBRIEFING:'
puts 'Thank you for answering our questions. We were actually only curious to know if you wet the bed'
if (wets_bed == true)
	puts 'From this experiment, we conclude that you wet the bed'
end
if (wets_bed == False)
	puts 'From this experiment, we conclude that you do not wet the bed'
end