require "rspec/autorun"

def armstrong?(num)
  array = num.to_s.split(//)
  exponent = array.count
  result_array = []
  array.each do |value|
    result_array << (value.to_i ** exponent)
  end
  result_number = 0
  result_array.each { |number| result_number += number }
  result_number == num
end

describe "#armstrong?" do
  it "should output true if it is an armstrong number" do
    armstrong?(153).should == true
  end

  it "should output false if it is not an armstrong number" do
    armstrong?(123).should == false
  end

  it "should work with longer values" do
    armstrong?(1634).should == true
  end
end

#An armstrong number of 3 digits is a number for which the sum of cube of its digits
#are equal to the number (e.g. 371 is because 3*3*3 + 7*7*7 + 1*1*1 = 371)
