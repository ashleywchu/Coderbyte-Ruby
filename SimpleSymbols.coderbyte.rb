# Using the Ruby language, have the function SimpleSymbols(str) take the 
# str parameter being passed and determine if it is an acceptable sequence 
# by either returning the string true or false. The str parameter will be 
# composed of + and = symbols with several letters between them 
# (ie. ++d+===+c++==a) and for the string to be true each letter must be 
# surrounded by a + symbol. So the string to the left would be false. 
# The string will not be empty and will have at least one letter. 


def SimpleSymbols(str)
	char = str.split("")
	char.each_with_index { |i, index|
		if (i =~ /[a-zA-Z]/) && (char[index - 1] != "+" || char[index + 1] != "+")
			return false
		end
	}
	return true
end
