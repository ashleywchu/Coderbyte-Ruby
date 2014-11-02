# Using the Ruby language, have the function CaesarCipher(str,num) take the str parameter
# and perform a Caesar Cipher shift on it using the num parameter as the shifting number.
# A Caesar Cipher works by shifting each letter in the string N places down in the
# alphabet (in this case N will be num). Punctuation, spaces, and capitalization should
# remain intact. For example if the string is "Caesar Cipher" and num is 2 the output
# should be "Ecguct Ekrjgt". 


def CaesarCipher(str, num)
	alphabet = "abcdefghijkmnopqrstuvwxyz"
	output = ""
	str.split("").each { |x|
		if '\#{\'}${"}/'.include?(x)
			output << x
		else
			count = alphabet.index(char.downcase) + num
			count -= 26 if count > 26
			transformed_char = alphabet[count]
			if x == x.upcase
				output << transformed_char.upcase
			else
				output << transformed_char
			end
		end
	end
	return output
end


puts CaesarCipher("Hello", 4)




