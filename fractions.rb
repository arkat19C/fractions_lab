# This program simplfies, adds, subtracts, multiplies, and divides fractions.

# tells the programs what gems it needs to use
require 'rational'

# simplify method
def simplify(n1,d1)
	a = n1.gcd(d1)
	num_simp = n1 / a
	denom_simp = d1 / a
	[num_simp,denom_simp]
end

# addition method
def add(n1,d1,n2,d2)
	common_d = d1 * d2
	first_num = n1 * d2
 	second_num = n2 * d1
 	fraction_num = first_num + second_num
	simplify(fraction_num,common_d)
end

# subtract method 
def subtract(n1,d1,n2,d2)
	add(n1,d1,-n2,d2)
end

# multiply method
def multiply(n1,d1,n2,d2)
	numerator = n1 * n2
	denom = d1 * d2
	simplify(numerator,denom)
end

# divide method
def divide(n1,d1,n2,d2)
	numer = n1 * d2
  	denom = d1 * n2
  	simplify(numer,denom)
end

