# Each new term in the Fibonacci sequence is generated by adding the previous two terms. By starting with 1 and 2, the first 10 terms will be:

# 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...
# 0, 1, 1, 2, 3

# By considering the terms in the Fibonacci sequence whose values do not exceed four million, find the sum of the even-valued terms.

def fib 
	arr = [0, 1]
	1.upto(32) do |x| 
		arr[-1] + arr[-2] <= 4_000_000 ? arr << arr[-1] + arr[-2] : arr
	end
	arr.select(&:even?).inject(:+)
end
