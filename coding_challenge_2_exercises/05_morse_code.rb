require 'rspec/autorun'

# Build a function, `morse_encode(str)` that takes in a string (no
# numbers or punctuation) and outputs the morse code for it. See
# http://en.wikipedia.org/wiki/Morse_code. Put two spaces between
# words and one space between letters.
#
# You'll have to type in morse code: I'd use a hash to map letters to
# codes. Don't worry about numbers.
#
# I wrote a helper method `morse_encode_word(word)` that handled a
# single word.
#
# Difficulty: 2/5

def morse_encode(str)
  str.gsub!("a", ".- ")
  str.gsub!("b", "-... ")
  str.gsub!("c", "-.-. ")
  str.gsub!("d", "-.. ")
  str.gsub!("e", ". ")
  str.gsub!("f", "..-. ")
  str.gsub!("g", "--. ")
  str.gsub!("h", ".... ")
  str.gsub!("i", ".. ")
  str.gsub!("j", ".--- ")
  str.gsub!("k", "-.- ")
  str.gsub!("l", ".-.. ")
  str.gsub!("m", "-- ")
  str.gsub!("n", "-. ")
  str.gsub!("o", "--- ")
  str.gsub!("p", ".--. ")
  str.gsub!("q", "--.- ")
  str.gsub!("r", ".-. ")
  str.gsub!("s", "... ")
  str.gsub!("t", "- ")
  str.gsub!("u", "..- ")
  str.gsub!("v", "...- ")
  str.gsub!("w", ".-- ")
  str.gsub!("x", "-..- ")
  str.gsub!("y", "-.-- ")
  str.gsub!("z", "--.. ")
  str = str[0...-1]
end 

describe "#morse_encode" do
  it "should do a simple letter" do
    morse_encode("q").should == "--.-"
  end

  it "should handle a small word" do
    morse_encode("cat").should == "-.-. .- -"
  end

  it "should handle a phrase" do
    morse_encode("cat in hat").should == "-.-. .- -  .. -.  .... .- -"
  end
end
