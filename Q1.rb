require "minitest/unit"
include Minitest::Assertions

# Q1: Write a method, pow, that takes two (non-negative, integer) numbers, base and exponent and returns base
# raised to the exponent power.  (No fair using Ruby's base ** exponent notation!).
def pow(base, exponent)
  result = 1
  exponent.times do 
    result = result * base 
  end
  result
end
assert_equal 8, pow(2, 3)
assert_equal 9, pow(3, 2)
assert_equal 81, pow(9, 2)
assert_equal 256, pow(2, 8)
assert_equal 1, pow(4, 0)
assert_equal 5, pow(5, 1)
