# Using the Ruby language, have the function SimpleAdding(num) add up 
# all the numbers from 1 to num. For the test cases, the parameter num 
# will be any number from 1 to 1000. 

def SimpleAdding(num)
	i = 0
	total = 0
	while i <= num
		total += i
		i += 1
	end
	print total
end

# OR

def SimpleAdding(num)
	(1..num).reduce(:+)
end

# OR

def SimpleAdding(num)
	i = 0
	sum = 0
	while i <= num
		sum += i
		i += 1
	end
	sum
end
