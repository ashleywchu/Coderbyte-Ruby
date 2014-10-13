# Have the function LetterChanges(str) take the str parameter being passed 
# and modify it using the following algorithm. Replace every letter in the 
# string with the letter following it in the alphabet (ie. c becomes d, z 
# becomes a). Then capitalize every vowel in this new string (a, e, i, o, 
# u) and finally return this modified string. 


def LetterChanges(str)
	arr = str.split('')
	arr = arr.map do |char|
		# if char is greater than or equal to "a" and char is less than "z"
		if char >= "a" && char < "z"
			char = char.next
		# elsif char equals "z",
		elsif char == "z"
			char = "a"
		else
			char = char
		end
	end

arr.map! do |char|
	if char =~ /[a|e|i|o|u]/
		char.upcase
	else
		char
	end
end
arr.join('')
end

puts LetterChanges("hello*3")







