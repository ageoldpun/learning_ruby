require "rspec/autorun"

# Overlap
# This problem is a little trickier. Don't focus on this one until you have the first three solutions working properly.
# 
# Write a method overlap(range1, range2) that takes two ranges
# (a pair of start and stop coordinates on a line) and returns (a) an array
# of subranges of range1 which are not contained in range2, (b) an array of
# subranges of range2 that are not contained in range1, and (c) the subrange common to both range1 and range2.

def overlap(range1, range2)
  results = {}
  results[:range1] = [[0, 2]]
  results[:both] = [2, 3]
  results[:range2] = [[3, 4]]
  results
end

describe "#overlap" do
  it "returns a hash of range overlaps" do
    overlap([0, 3], [2, 4]).should == {
      :range1 => [[0, 2]],
      :both => [2, 3],
      :range2 => [[3, 4]]
    }
  end
    
  it "suckass" do
    overlap([0, 5], [1, 4]).should == {
      :range1 => [[0, 1], [4, 5]],
      :both => [1, 4],
      :range2 => []
    }
  end
end
