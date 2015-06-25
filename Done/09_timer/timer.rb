class Timer

	attr_reader :seconds
	attr_reader :time_string


	# Initialize the default value of the timer
	def initialize
		@seconds = 0
		@time_string = "00:00:00"
	end

	# It's like a setter for the time, nothing more
	def seconds=(time)
		@seconds = time
	end

	# Transform an int to a string for showing the time
	def time_string

		# Convert the number of seconds to hours and transfor to a string with 2 character so we will have 00 isntead of 1 only.
		hours 	= (seconds / 3600).to_s.rjust(2,'0')

		# Same as hours, but to make the translation to minute easier I added the substract 3600 so no need to create a functiun for that
		minute 	= ((seconds - (hours.to_i * 3600))/ 60).to_s.rjust(2,'0')
		
		# For the last seconds left
		last 	= (seconds % 60).to_s.rjust(2,'0')
		
		#Send back the time in form of a string
		@time_string = "#{hours}:#{minute}:#{last}"
		
	end

end