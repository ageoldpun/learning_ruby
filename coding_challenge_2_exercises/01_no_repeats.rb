#require 'rspec/autorun'
require "test/unit"
include Test::Unit::Assertions
# Write a function, `no_repeats(year_start, year_end)`, which takes a
# range of years and outputs those years which do not have any
# repeated digits.
#
# You should probably write a helper function, `no_repeat?(year)` which
# returns true/false if a single year doesn't have a repeat.
#
# Difficulty: 1/5

def no_repeat?(year)
  numbers = year.to_s.split(//)
  if numbers.uniq.length == numbers.length
    numbers = true
  end  
end

assert_equal false, no_repeat?(1123)
assert_equal true, no_repeat?(1234)

=begin
def no_repeats(year_start, year_end)
  array = []
  years_list = (year_start..year_end).each do |x| 
  if x.no_repeat? == true; x << array
  end
  return array
end
end

describe "#no_repeats" do
  it "should return a no repeat year" do
    no_repeats(1234, 1234).should == [1234]
  end

  it "should not return a repeat year" do
    no_repeats(1123, 1123).should == []
  end

  it "should return only those years that have no repeated digits" do
    no_repeats(1980, 1987).should == [
      1980,
      1982,
      1983,
      1984,
      1985,
      1986,
      1987
      ]
  end
end
=end
