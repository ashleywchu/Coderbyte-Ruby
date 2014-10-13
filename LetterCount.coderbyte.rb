# Using the Ruby language, have the function LetterCount(str) take the
# str parameter being passed and return the first word with the greatest
# number of repeated letters. For example: "Today, is the greatest day
# ever!" should return greatest because it has 2 e's (and 2 t's) and it
# comes before ever which also has 2 e's. If there are no words with
# repeating letters return -1. Words will be separated by spaces. 


def LetterCount(str)
	hash = Hash.new
	array = str.split(" ")
	array.each { |word|
		word.each_char { |char|
			if word.count(char) > 1
				hash[word] = word.count(char)
			end
		}
	}
	hash.empty? ? -1 : hash.max_by { |k, v| v}.first.to_s

end

