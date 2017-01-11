puts 'Hi please answer the following questions!!'
puts 'What year were you born?'
year = gets.chomp.to_i
puts 'What month were you born in? Please enter 1 for January, 2 for February...12 for December'
month = gets.chomp.to_i
puts 'What day of the month were you born?'
day = gets.chomp.to_i
currentTime = Time.new
age = 1
puts 'Here are the number of spanks that correlate to your age! 1 spank every year!'
while Time.local(year + age, month, day) <= currentTime
	puts 'SPANK!'
	age = age + 1
end
puts 'Your age is ' + age.to_s
