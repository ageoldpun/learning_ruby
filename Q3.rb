# Q3: Write a method, is_prime?, that takes a number num and returns true if it is prime and false otherwise.
# You may wish to use the modulo operation: 5 % 2 returns the remainder when dividing 5 by 2: 1.  If num is
# divisible by i, then num % i == 0.  (You would not be expected to already know about modulo for this challenge)
require "test/unit"
include Test::Unit::Assertions

def divisors_for(number)
  (2...number).collect { |denominator| number/denominator.to_f }
end
assert_equal [10/2.0, 10/3.0, 10/4.0, 10/5.0, 10/6.0, 10/7.0, 10/8.0, 10/9.0], divisors_for(10)
assert_equal [5/2.0, 5/3.0, 5/4.0], divisors_for(5)

def whole_number?(number)
  number % 1 == 0
end
assert_equal true, whole_number?(5)
assert_equal true, whole_number?(100001)
assert_equal false, whole_number?(1.01)
assert_equal false, whole_number?(0.123)
  
def is_prime?(number)
  array = divisors_for(number)
  !array.any? { |value| whole_number?(value) }
end
assert_equal true, is_prime?(2)
assert_equal true, is_prime?(5)
assert_equal false, is_prime?(10)
