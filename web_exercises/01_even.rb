require "rspec/autorun"

def even? (num)
  num % 2 == 0
end

describe "#even?" do
  it "returns true if input is even" do
    even?(2).should == true
  end

  it "returns false if input is odd" do
    even?(3).should == false
  end
end
