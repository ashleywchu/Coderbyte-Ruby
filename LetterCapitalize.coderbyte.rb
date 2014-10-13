# Using the Ruby language, have the function LetterCapitalize(str) take 
# the str parameter being passed and capitalize the first letter of each 
# word. Words will be separated by only one space. 

def LetterCapitalize(str)
	words = str.split(" ")
	caps = words.map { |word| word.capitalize }
	whole = caps.join(" ")

end

puts LetterCapitalize("This is my string.")


=begin
def LetterCapitalize(str)
	str.split(" ").map(&:capitalize).join(" ")


end

puts LetterCapitalize("This is my string.")

=end