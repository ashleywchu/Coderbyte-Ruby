# Using the Ruby language, have the function BinaryConverter(str) return
# the decimal form of the binary value. For example: if 101 is passed
# return 5, or if 1000 is passed return 8. 

=begin
#WRONG
def BinaryConverter(str)
	exp = str.length
	each_number = str.split("")
	step_two = (0...exp).each { |x|
		2**x }
	i = 0
	step_three = step_two.each { |x|
		each_number[i] * x
		i += 1
	}
	step_four = step_three.inject(:+)
	return step_four
end

puts BinaryConverter("100101")
=end

=begin
def BinaryConverter(str)
	str.to_i(2)
end
=end


def BinaryConverter(str)
  str.reverse!
  letters = str.split(//)
  answer = 0
  for i in 0..letters.size()
    answer += letters[i].to_i * 2**i
  end
  return "#{answer}" 
         
end