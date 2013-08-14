# Q3: Write a method, is_prime?, that takes a number num and returns true if it is prime and false otherwise.
# You may wish to use the modulo operation: 5 % 2 returns the remainder when dividing 5 by 2: 1.  If num is
# divisible by i, then num % i == 0.  (You would not be expected to already know about modulo for this challenge)
require "test/unit"
include Test::Unit::Assertions

def divisors_for(number)
  (2..number).collect { |denominator| number/denominator.to_f }
end
  
def is_prime?(number)
  array = divisors_for(number - 1)
  array.any? { |value| value % 1 == 0 }
end
assert_equal true, is_prime?(2)
assert_equal true, is_prime?(5)
assert_equal false, is_prime?(10)
