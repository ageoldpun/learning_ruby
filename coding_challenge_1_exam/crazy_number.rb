require "test/unit/assertions"
include Test::Unit::Assertions

def crazy_nums(max)
  array = []
  (1...max).each do |x|
    if x % 3 == 0
      array << x
    end
    if x % 5 == 0
      array << x
    end
  end
  results = []
  array.each do |x|
    if x % 3 == 0 && x % 5 == 0
    else
      results << x
    end
  end
  return results
end

assert_equal [], crazy_nums(3)
assert_equal [3, 5, 6, 9], crazy_nums(10)
assert_equal [3, 5, 6, 9, 10, 12, 18], crazy_nums(20)
