require "rspec/autorun"

def factorial(num)
  array = (2..num).last(num).reverse
  solution = 1 
  array.each do |value|
    solution *= value
  end
  solution
end

describe "#factorial" do
  it "calculates a basic factorial" do
    factorial(4).should == 24
  end

  it "calculates a bigger factorial" do
    factorial(10).should == 3628800
  end
end
