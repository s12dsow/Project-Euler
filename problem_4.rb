# A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.

# Find the largest palindrome made from the product of two 3-digit numbers.

def largest_palindrome_product
  largest_palindrome = 0

  999.downto(100) do |i|
    i.downto(100) do |j|
      result = i * j
      largest_palindrome = result if result > largest_palindrome && result.to_s == result.to_s.reverse
      break if result <= largest_palindrome
    end
  end
  largest_palindrome
end

p largest_palindrome_product