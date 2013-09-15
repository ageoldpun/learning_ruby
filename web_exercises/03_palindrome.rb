#Write a program to check if a number is palindrome
#A number is a palindrome if number is equal to reverse of number

require "rspec/autorun"

def palindrome?(num)
  checker = num.to_s.split(//)
  index = checker.count - 1
  result = true
  upper = index/2 
  lower = index/2
  until upper == index 
    upper = upper + 1
    lower = lower - 1
    if checker[upper] != checker[lower]
      result = false
    end
  end
  return result
end

describe "#palindrome?" do
  it "returns true if input is a palindrome" do
    palindrome?(121).should == true
  end

  it "returns false if input is not a palindrome" do
    palindrome?(321).should == false
  end

  it "works with longer palindromes" do
    palindrome?(1234321).should == true
  end

  it "fails on longer non-palindromes" do
    palindrome?(12345).should == false
  end

  #it "works with an even number of digits" do
  #  palindrome?(123321).should == true
  #end
end

#discovered a bug where it doesn't work when num = 
