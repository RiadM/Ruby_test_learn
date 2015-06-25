#Ajoute des nombres ensembles
def add(*nums)
	nums.inject {|sum,x| sum + x}
end

def subtract(*nums)
	nums.inject {|sum,x| sum - x}
end

def sum(nums)
	
	if nums == []
		0
	elsif nums.length < 1
		nums[0]
	else
		nums.inject {|sum,x| sum + x}
	end
end

def multiply(nums)
	nums.inject {|sum, x| sum * x}
end

def power(num, pow)
	num ** pow
end

def factorial(nums)
	sum = 1 

		if nums < 3
			nums
		else
			(2..nums).each do |x|
				sum *= x
			end
			sum
		end
end