require "rspec/autorun"

def prime?(num)
  array = []
  (2...num).collect { |x| array << (num.to_f / x.to_f) }
  array.none? { |value| value % 1 == 0 }
end

describe "#prime?" do
  it "returns true if input is prime" do
    prime?(7).should == true
  end

  it "returns false if input is not prime" do
    prime?(9).should == false
  end
end
