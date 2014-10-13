# Using the Ruby language, have the function FirstFactorial(num) 
# take the num parameter being passed and return the factorial of it 
# (ie. if num = 4, return (4 * 3 * 2 * 1)). For the test cases, the 
# range will be between 1 and 18. 

def FirstFactorial(num)
	i = 1
	total = 1
	while i <= num
		total *= i
		i += 1
	end
	puts total
end

FirstFactorial(5)

=begin
def FirstFactorial(num)

	(1..num).reduce(:*)
end

puts FirstFactorial(3)
=end
=begin
def FirstFactorial(num)
	i = 1
	sum = 1
	for i in 1..num
		sum *= i
		i += 1
	end
	sum
end

puts FirstFactorial(3)
=end
