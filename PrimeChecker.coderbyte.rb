# Using the Ruby language, have the function PrimeChecker(num) take num and return
# 1 if any arrangement of num comes out to be a prime number, otherwise return 0.
# For example: if num is 910, the output should be 1 because 910 can be arranged
# into 109 or 019, both of which are primes. 

def PrimeChecker(num)
	nums = num.to_s.split("")

	perm = nums.permutation(nums.length).to_a
	perm.each do |x|
		if is_prime?(x.join("").to_i)
			return 1
		end 
	end
	return 0
end

def is_prime?(number)
	i = 2
	while i < number
		if number % i == 0
			return false
		end
		i += 1
	end
	return true
end