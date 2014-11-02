# Using the Ruby language, have the function SwapCase(str) take the str parameter
# and swap the case of each character. For example: if str is "Hello World" the
# output should be hELLO wORLD. Let numbers and symbols stay the way they are. 

def SwapCase(str)
	str.swapcase
end

# or

def SwapCase(str)
	letters = str.chars.map do |letter|
		if letter == letter.upcase
			letter.downcase
		else
			letter.upcase
		end

	end
	return letters.join("")
end

print SwapCase("Hello World")