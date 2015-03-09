# # The prime factors of 13195 are 5, 7, 13 and 29.

# # What is the largest prime factor of the number 600851475143 ?


def prime_factors(num)
	primes = []
	factor = 2

	while num >= factor
		if num % factor == 0
			primes << factor
			num = num / factor
		else
			factor += 1
		end
	end
	primes.max
end

p prime_factors(600851475143)