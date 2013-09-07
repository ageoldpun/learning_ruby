require "test/unit"
include Test::Unit::Assertions

def encrypt(str)
  split = str.split(//)
  solution = []
  split.each do |letter|
    if solution == []
      solution.push [letter, 1]
    elsif letter == solution[-1][0]
      solution[-1][1] = solution[-1][1] + 1
    elsif
      solution.push [letter, 1] 
    end
  end
  return solution
end

assert_equal [["a", 3], ["b", 2], ["c", 1], ["b", 2], ["a", 3]], encrypt("aaabbcbbaaa")
assert_equal [["a", 10]], encrypt("aaaaaaaaaa")
assert_equal [], encrypt("")
