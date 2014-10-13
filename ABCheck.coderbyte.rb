# Using the Ruby language, have the function ABCheck(str) take the str 
# parameter being passed and return the string true if the characters a 
# and b are separated by exactly 3 places anywhere in the string at least 
# once (ie. "lane borrowed" would result in true because there is exactly 
# three characters between a and b). Otherwise return the string false.

def ABCheck(str)
	str.split("").each_with_index { |x, index|
		if x == "a" && (str[index + 4] == "b")
			return true
		end
	}
	return false
	
end 

print ABCheck("Laura sobs")


=begin
def ABCheck(str)
  str.match(/(a.{3}b|b.{3}a)/) ? true : false
end
print ABCheck("Laura sobs")
=end