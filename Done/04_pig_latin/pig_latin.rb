def translate(words)

	final = ""
	
	def latin(mot)
		
		#This will seach for the first occurence of a vowel
		firstV = mot.index(/[aeiouy]/)
		

		#Si la vowel n'est pas en premier il vas en accordance avec els cas
		if firstV !=0

			#C'est vraiment un hack, cherche si "qu" est avant la premiere vowel pour le considerer comme consonant
			if mot.index("qu") == firstV-1
				mot << mot.slice!(0,firstV+1) + "ay"
			else
				mot << mot.slice!(0,firstV) + "ay"
			end
		#Si c'est seulement une vowel first alors il agit en conséquence	
		elsif firstV == 0 || mot.rindex(/[aeiouy]/) == (mot.length -1) 
			mot << "ay"
		#Si la variable rentrer n'est pas en accordance avec les parametres retourne une erreur
		else
			"Error try to do what your told jackass"
		end
	mot
	end
	
	#Word to translate abreviation
	wtt = words.split
	#Split the word so you can have multiple words send to the program
	wtt.each do |x|
		#The  space at the end let other word to be added
		final << "#{latin(x)}" + " "
	end	

	#The strip delete the space at the end if it's not necessary
	final.strip
end
