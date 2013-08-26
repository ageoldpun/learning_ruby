# Using your is_prime? method, write a new method, primes that takes a (non-negative, integer) number max
# and returns an array of all prime numbers less than max.

require "test/unit"
include Test::Unit::Assertions
require "./Q3"

# def divisors_for(number)
#   (2...number).collect { |denominator| number/denominator.to_f }
# end
# 
# def whole_number?(number)
#   number % 1 == 0
# end
# 
# def is_prime?(number)
#   array = divisors_for(number)
#   array.none? { |value| whole_number?(value) } 
# end

def primes(max)
  (2..max).find_all { |value| is_prime?(value) }
end
assert_equal [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31], primes(32)
assert_equal [2, 3, 5, 7, 11, 13], primes(15)
assert_equal [2, 3], primes(4)


