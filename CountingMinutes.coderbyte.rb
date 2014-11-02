# Using the Ruby language, have the function CountingMinutesI(str) take the str parameter
# being passed which will be two times (each properly formatted with a colon and am or pm)
# separated by a hyphen and return the total number of minutes between the two times.
# The time will be in a 12 hour clock format. For example: if str is 9:00am-10:00am then
# the output should be 60. If str is 1:00pm-11:00am the output should be 1320. 

MINUTES_IN_DAY = 24 * 60
def CountingMinutesI(str)

	times = str.split("-")
	time1 = Convert(times[0])
	time2 = Convert(times[1])

	if time1 < time2
		return time2 - time1
	elsif time1 > time2
		return MINUTES_IN_DAY - (time1 - time2)
	else
		return MINUTES_IN_DAY
	end

end


def Convert(time)
	time1 = time.split(":")
	hour = time1[0]

	# if time includes "am" and hour equals "12", then hour equals 0
	# if time includes "am" and hour doesn't equal "12", then hour is converted into minutes
	hour = if time.include?("am")
		hour == "12" ? 0 : (hour.to_i * 60)
	# if time doesn't include "am" (ie includes "pm") and hour equals "12", then hour equals 720
	# if time doesn't include "am" and hour doesn't equal "12", then 12 is added to hour and converted into minutes
	else
		hour == "12" ? 720 : (hour.to_i + 12) * 60
	end
	min = time1[1][0..1].to_i

	return hour + min 
end









