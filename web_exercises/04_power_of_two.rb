require "rspec/autorun"

#keep dividing by 2 and if the result is eventually 1, it is a factor of 2

def power_of_two?(num)
  until num.to_f <= 1
    num = num.to_f/2
  end
  num == 1
end

describe "#power_of_two?" do
  it "returns true if num is a power of 2" do
    power_of_two?(8).should == true
  end

  it "returns false if num is not a power of 2" do
    power_of_two?(9).should == false
  end
end
