require "byebug"
def smallest_multiple
  num = 1

  1.upto(2).each do |x|
    1.upto(2).each do |j|
      if (num * j) % x == 0
        num *= j
        break
      end
    end
  end
  num
end

p smallest_multiple