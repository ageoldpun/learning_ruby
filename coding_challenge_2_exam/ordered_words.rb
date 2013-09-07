require "test/unit"
include Test::Unit::Assertions

def ordered_word?(letters)
  sorted = letters.split("").sort
  sorted.join == letters
end
assert_equal true, ordered_word?("amz")
assert_equal false, ordered_word?("zma")
assert_equal true, ordered_word?("aa")
