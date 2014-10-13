# Using the Ruby language, have the function PrimeMover(num) return the 
# numth prime number. The range will be from 1 to 10^4. For example: 
# if num is 16 the output should be 53 as 53 is the 16th prime number. 

def is_prime?(x)
	i = 2
	while i < x
		if x % i == 0
			return false
		end
		i += 1
	end
	return true
end



def PrimeMover(num)
	# calculate numth prime number
	prime_array = []
	i = 1
	count = 0
	while count <= num
		if is_prime?(i)
			prime_array << i
			count += 1
		end
		i += 1
	end
 	prime_array.last
end
	



puts PrimeMover(1000)

=begin
require 'prime'
def PrimeMover(num)
	puts Prime.first(num).last
end

puts PrimeMover(5)
=end