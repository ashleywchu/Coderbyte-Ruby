# Using the Ruby language, have the function LongestWord(sen) take the 
# sen parameter being passed and return the largest word in the string. 
# If there are two or more words that are the same length, return the 
# first word from the string with that length. Ignore punctuation and 
# assume sen will not be empty. 

def LongestWord(sen)
	words = sen.split(" ")
	longest = []
	i = 0
	while i <= words.length
		words.each { |words|
		if words[i].length > words[i + 1].length
			longest << words[i]
		end
	}
		i += 1
	end
	longest

end

# OR

def LongestWord(sen)
	print sen.split(" ").max_by(&:length)	 
end
