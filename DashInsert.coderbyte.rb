# Using the Ruby language, have the function DashInsert(num) insert dashes ('-') between
# each two odd numbers in num. For example: if num is 454793 the output should be 4547-9-3.
# Don't count zero as an odd number. 

def DashInsert(num)
	num = num.to_s.split("")
	with_dash = []

	num.each_with_index do |x, i|
		with_dash << x
		if odd(x.to_i) == true && odd(num[i + 1].to_i) == true
			with_dash << "-"
		end
		return with_dash.join if num[i + 1] == nil
	end
end

def odd(num)
	return false if num % 2 == 0
	true 
end
