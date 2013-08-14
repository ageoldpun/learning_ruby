require "minitest/unit"
include Minitest::Assertions

# Q1: Write a method, pow, that takes two (non-negative, integer) numbers, base and exponent and returns base
# raised to the exponent power.  (No fair using Ruby's base ** exponent notation!).
def pow(base, exponent)
  i = 1
  result = 1
  while i <= exponent
    result = result * base
    i += 1
  end
  return result
end
assert_equal 8, pow(2, 3)
assert_equal 9, pow(3, 2)
assert_equal 81, pow(9, 2)
assert_equal 256, pow(2, 8)
