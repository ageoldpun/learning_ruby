require "rspec/autorun"

def sort(array)
  array.sort
end

describe "#sort" do
  it "sorts an integer array" do
    sort([4, 3, 2, 1]).should == [1, 2, 3, 4]
  end

  it "sorts a string array" do
    sort(["d", "c", "b", "a"]).should == ["a", "b", "c", "d"]
  end

  it "sorts bigger strings" do
    sort(["dog", "cat", "bat", "apple"]).should == ["apple", "bat", "cat", "dog"]
  end
end
