# Using the Ruby language, have the function ArrayAdditionI(arr) take the
# array of numbers stored in arr and return the string true if any
# combination of numbers in the array can be added up to equal the largest
# number in the array, otherwise return the string false. For example:
# if arr contains [4, 6, 23, 10, 1, 3] the output should return true
# because 4 + 6 + 10 + 3 = 23. The array will not be empty, will not
# contain all the same elements, and may contain negative numbers. 


def ArrayAdditionI(array)
	can_be_added = false
	highest_number = array.sort.last
	array.delete(highest_number)

	(2..array.length).each { |i|
		array.permutation(i).each { |y|
			can_be_added = true if y.inject(:+) == highest_number
		}
	}
	return can_be_added
end
puts ArrayAdditionI([4, 6, 23, 10, 1, 3])