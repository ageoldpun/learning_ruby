require "rspec/autorun"

def fibonacci_up_to(num)
  result = [1]
  index_num = 1
  until index_num > num
    result << index_num
    index_num = index_num + result[-2]
  end
  result
end

describe "#fibonacci_up_to" do
  it "should print fibonacci series up to a low number" do
    fibonacci_up_to(9).should == [1, 1, 2, 3, 5, 8]
  end

  it "should work with 1" do
    fibonacci_up_to(1).should == [1, 1]
  end

  it "works when num is a value on the end" do
    fibonacci_up_to(5).should == [1, 1, 2, 3, 5]
  end
end
