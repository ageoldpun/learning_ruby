require "test/unit/assertions"
include Test::Unit::Assertions

def crazy_sum(numbers)
  sum = 0
  numbers.each_with_index { |number, index| sum += number * index }
  sum
end

assert_equal 0, crazy_sum([2]) # (2*0)
assert_equal 3, crazy_sum([2, 3]) # (2*0) + (3*1)
assert_equal 13, crazy_sum([2, 3, 5]) # (2*0) + (3*1) + (5*2)
#the result should equal 19, not 22.
assert_equal 19, crazy_sum([2, 3, 5, 2]) # (2*0) + (3*1) + (5*2) + (2*3) 

