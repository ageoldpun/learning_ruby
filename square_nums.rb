require "test/unit/assertions"
include Test::Unit::Assertions

def square_nums(max)
  count = 0
  (1...max).each do |x| 
    if x**0.5 % 1 == 0
      count = count + 1
    end 
  end  
  return count 
end

assert_equal 2, square_nums(5)
assert_equal 3, square_nums(10)
assert_equal 4, square_nums(25)
