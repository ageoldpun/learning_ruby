require 'rspec/autorun'

# Catsylvanian money is a strange thing: they have a coin for every
# denomination (including zero!). A wonky change machine in
# Catsylvania takes any coin of value N and returns 3 new coins,
# valued at N/2, N/3 and N/4 (rounding down).
#
# Write a method `wonky_coins(n)` that returns the number of coins you
# are left with if you take all non-zero coins and keep feeding them
# back into the machine until you are left with only zero-value coins.
#
# Difficulty: 3/5

def wonky_coins(n)
  return 1 if n == 0
  wonky_coins(n/2) + wonky_coins(n/3) + wonky_coins(n/4)
end

describe "#wonky_coins" do
  it "handles a simple case" do
    wonky_coins(1).should == 3
  end

  it "handles a larger case" do
    wonky_coins(5).should == 11
      # 11
      # => [2, 1, 1]
      # => [[1, 0, 0], [0, 0, 0], [0, 0, 0]]
      # => [[[0, 0, 0], 0, 0], [0, 0, 0], [0, 0, 0]]
  end

  it "handles being given the zero coin" do
    wonky_coins(0).should == 1
  end

end
