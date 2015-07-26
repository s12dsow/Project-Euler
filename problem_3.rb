# # The prime factors of 13195 are 5, 7, 13 and 29.

# # What is the largest prime factor of the number 600851475143 ?


def largest_prime_factor(num)
  factors = []
  half_of_num = num / 2

  (2..half_of_num).each do |factor|
    if num % factor == 0
      factors << factor
      num = num / factor
    end
  end
  factors.max
end

p largest_prime_factor(13195)