def smallest_multiple
  num = 1

  1.upto(20).each do |x|
    1.upto(20).each do |j|
      if (num * j) % x == 0
        num *= j
        break
      end
    end
  end
  num
end

p smallest_multiple