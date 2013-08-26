require 'rspec/autorun'

# Write a function, `letter_count(str)` that takes a string and
# returns a hash mapping each letter to its frequency. Do not include
# spaces.
#
# Difficulty: 1/5

def letter_count(string)
  string.scan(/\w/).reduce({}) do |counts, letter|
    counts.merge letter => string.count(letter)
  end
end

describe "#letter_count" do
  it "handles a simple case" do
    letter_count("cat").should == {
      "c" => 1,
      "a" => 1,
      "t" => 1
    }
  end

  it "handles multiples of the same letter" do
    letter_count("moon").should == {
      "m" => 1,
      "o" => 2,
      "n" => 1
    }
  end

  it "handles a multi-word case" do
    letter_count("cats are fun").should == {
      "a" => 2,
      "c" => 1,
      "e" => 1,
      "f" => 1,
      "n" => 1,
      "r" => 1,
      "s" => 1,
      "t" => 1,
      "u" => 1
    }
  end
end
