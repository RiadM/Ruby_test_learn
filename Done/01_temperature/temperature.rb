def ftoc(number)
	#Transforme les Far a celsius
	(( number - 32 ) / 1.8).ceil
end

def ctof(number)
	#Celsius a retard temperature
	( number * 1.8 ) +32
end