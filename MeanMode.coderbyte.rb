# Using the Ruby language, have the function MeanMode(arr) take the array of numbers
# stored in arr and return 1 if the mode equals the mean, 0 if they don't equal each
# other (ie. [5, 3, 3, 3, 1] should return 1 because the mode (3) equals the mean (3)).
# The array will not be empty, will only contain positive integers, and will not contain
# more than one mode. 

def MeanMode(arr)
	# to calculate mean
	sum = 0
	arr.each do |x|
		sum += x
	end
	mean = sum / arr.length

	# to calculate mode
	ordered = arr.sort
	mode_index = (ordered.length / 2).floor
	mode = ordered[mode_index - 1]

	if mode == mean
		return 1
	else
		return 0
	end

end











