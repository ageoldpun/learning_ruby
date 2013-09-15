require "rspec/autorun"

def string_reverse(string)
  string.reverse
end

describe "#string_reverse" do
  it "reverses a string of lowercase letters" do
    string_reverse("abcdef").should == "fedcba"
  end

  it "reverses words" do
    string_reverse("dog").should == "god"
  end

  it "reverses even with caps" do
    string_reverse("Tarp").should == "praT"
  end
end
