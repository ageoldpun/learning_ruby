require "test/unit"
include Test::Unit::Assertions

def encrypt(str)
  str.split("").reduce([]) do |solution, letter|
    if solution.empty? || letter != solution[-1][0]
      solution.push [letter, 1]
    else
      solution[-1][1] += 1
    end
    solution
  end
end

assert_equal [["a", 3], ["b", 2], ["c", 1], ["b", 2], ["a", 3]], encrypt("aaabbcbbaaa")
assert_equal [["a", 10]], encrypt("aaaaaaaaaa")
assert_equal [], encrypt("")
