require "test/unit/assertions"
include Test::Unit::Assertions

class BasicObject
  def whole?
    self % 1 == 0
  end
  
  def sqrt
    self ** 0.5
  end

  def square_nums
    (1...self).map(&:sqrt).select(&:whole?).count
  end
end

assert_equal 2, 5.square_nums
assert_equal 3, 10.square_nums
assert_equal 4, 25.square_nums
