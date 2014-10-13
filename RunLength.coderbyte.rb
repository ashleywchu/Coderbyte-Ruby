# Using the Ruby language, have the function RunLength(str) take the str 
# parameter being passed and return a compressed version of the string 
# using the Run-length encoding algorithm. This algorithm works by taking 
# the occurrence of each repeating character and outputting that number 
# along with a single character of the repeating sequence. For example: 
# "wwwggopp" would return 3w2g1o2p. The string will not contain any 
# numbers, punctuation, or symbols. 

=begin
def RunLength(str)
	i = 1
	while i <= str.length
		str.split("").each_by_index { |x, index|
			if str[index] == str[index + 1]



	}



end
=end
def RunLength(str)

  counter = 0
  out_str = ""
  str=str.split('')
  str.each_with_index do |char, i|
    counter+= 1
    unless char == str[i+1]
      out_str << counter.to_s << char
      counter = 0
     end
  end
 
      
     out_str    
end
puts RunLength("aabbcde")