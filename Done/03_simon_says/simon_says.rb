def echo(word)
	word
end

def shout(word)
	word.upcase
end

def repeat(word, numb = 2)
	("#{word} " * numb).rstrip 
end

def start_of_word(word, place)
	word.slice(0,place)
end

def first_word(word)
	word.split[0]
end

def titleize(words)
	mem = ""
	phrase = words.split
	
	littleW = ["the","over","and"]

	if phrase.length > 1

		(0...phrase.length).each do |x|

			#test if "little words" are in the sentence and not in the begining of the phrase
			#This make change to the code easier, since we only have to add new small words
			if littleW.include?(phrase[x]) == true && x != 0
				mem << "#{phrase[x]} "
			else
				mem << "#{phrase[x].capitalize} "
			end


		end
		mem.rstrip
	else
		words.capitalize
	end	
	
end