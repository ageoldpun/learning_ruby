require "minitest/unit"
include Minitest::Assertions

# Q2: Write a method, sum which takes an array of numbers and returns the sum of the numbers.
def sum(numbers)
  result = 0
  numbers.each { |n| result = result + n }
  result
end

assert_equal 10, sum([1, 2, 3, 4])
assert_equal 6, sum([1, 2, 3,])
assert_equal 15, sum([5, 5, 5])
