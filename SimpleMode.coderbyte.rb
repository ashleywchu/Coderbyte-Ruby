# Using the Ruby language, have the function SimpleMode(arr) take the array of numbers stored
# in arr and return the number that appears most frequently (the mode). For example: if arr
# contains [10, 4, 5, 2, 4] the output should be 4. If there is more than one mode return the
# one that appeared in the array first (ie. [5, 10, 10, 6, 5] should return 5 because it
# appeared first). If there is no mode return -1. The array will not be empty.

def SimpleMode(arr)
	hash = Hash.new
	arr.each_char { |char|
		if char.count > 1
			hash[x] = char.count
		end
	}

	hash.empty? ? -1 : hash.max_by { |k, v| v}.first.to_s

end

SimpleMode([5, 10, 10, 6, 5])