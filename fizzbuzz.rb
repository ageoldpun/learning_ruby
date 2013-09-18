#Write a program that prints the numbers from 1 to 100.  But for multiples of three print "Fizz" instead of the number
#and for the multiples of five print "Buzz".  For numbers which are multiples of both three and five print "FizzBuzz".

require "rspec/autorun"

def fizzbuzz(num)
fizz = "Fizz"
buzz = "Buzz"
fizzbuzz = "FizzBuzz"
  if num % 3 == 0 and num % 5 == 0
    return fizzbuzz
  elsif num % 3 == 0 and num % 5 != 0
    return fizz
  elsif num % 3 != 0 and num % 5 == 0
    return buzz
  else
    return num
  end
end

array = []
(1..100).each do |num|
  array << fizzbuzz(num)
end

array.each do |num|
  print "#{num}, "
end

describe "#fizzbuzz.rb" do
  it "prints Fizz if it is a multiple of 3" do
    fizzbuzz(9).should == "Fizz"
  end

  it "prints Buzz if it is a multiple of 5" do
    fizzbuzz(10).should == "Buzz"
  end

  it "prints FizzBuzz if it is a multiple of both 3 and 5" do
    fizzbuzz(15).should == "FizzBuzz"
  end
end
