require "test/unit/assertions"
include Test::Unit::Assertions

def crazy_nums(max)
  (1...max).select do |x|
    [x % 3, x % 5].select(&:zero?).count == 1
  end
end

assert_equal [], crazy_nums(3)
assert_equal [3, 5, 6, 9], crazy_nums(10)
assert_equal [3, 5, 6, 9, 10, 12, 18], crazy_nums(20)
