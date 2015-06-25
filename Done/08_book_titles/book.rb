class Book

	#Attributer reader permit to use title in the class
	attr_reader :title


	#Capitalize the word if its not in the list of exception
	def capitalize(word, make)
		word = word.capitalize unless make
		word
	end

	# Define if the word is an exception and return a boolean
	def exception(word = false)
		# List of exception, easy to modify
		if ["a","an","and","the", "in", "of"].include? word
			true
		end
	end
	



	def title=(new_title)
		
		# Split the title so we can manipulate every word separatly
		words = new_title.split(" ")

		# Will change the value of the array to the new one 	
		words.map! do |x|
			# Send the word and the boolean value to a capitalize function
			capitalize(x,exception(x))
		end
		
		# Make the first word alway capital
		words[0] = words[0].capitalize
		# Join the array together to make a string to return
		@title = words.join(" ")	
	end

end