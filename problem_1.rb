# If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and The sum of these multiples is 23.

# Find the sum of all the multiples of 3 or 5 below 1000.

def multiples
  numbers = (1...1000)
  sum = 0

  numbers.each do |num|
    sum += num if num % 5 == 0 || num % 3 == 0
  end
  sum
end