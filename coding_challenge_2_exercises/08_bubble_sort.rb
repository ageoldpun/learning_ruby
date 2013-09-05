require 'rspec/autorun'

# Write a function `bubble_sort(arr)` which will sort an array of
# integers using the "bubble sort"
# methodology. (http://en.wikipedia.org/wiki/Bubble_sort)
#
# Difficulty: 3/5

def bubble_sort(arr, steps = nil)
  steps ||= arr.count - 1
  arr.count.times do
    steps.times do |index|
      if arr[index] > arr[index+1]
        arr[index], arr[index+1] = arr[index+1], arr[index]
      end
    end
  end
  arr
end

describe "#bubble_sort" do
  it "sorts using the bubble method" do
    bubble_sort([5, 4, 3, 2, 1], 2).should == [3, 4, 5, 2, 1]
  end

  it "works with an empty array" do
    bubble_sort([]).should == []
  end

  it "works with an array of one item" do
    bubble_sort([1]).should == [1]
  end

  it "sorts numbers" do
    bubble_sort([5, 4, 3, 2, 1]).should == [1, 2, 3, 4, 5]
  end
end
