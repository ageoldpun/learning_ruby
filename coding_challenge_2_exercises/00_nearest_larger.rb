require 'rspec/autorun'

# Write a function, `nearest_larger(arr, i)` which takes an array and an
# index.  The function should return another index, `j`: this should
# satisfy:
#
# (a) `arr[i] < arr[j]`, AND
# (b) there is no `j2` closer to `i` than `j` where `arr[i] < arr[j]`.
#
# In case of ties (see example beow), choose the earliest (left-most)
# of the two indices. If no number in `arr` is larger than `arr[i]`,
# return `nil`.
#
# Difficulty: 2/5

def nearest_larger(arr, i)
  benchmark = 1
  check_minus = i
  check_plus = i
  loop do
    check_minus = check_minus - 1
    check_plus = check_plus + 1
    if arr[check_minus] > arr[i] and arr[check_plus] <= arr[i]
      return check_minus
    elsif arr[check_plus] > arr[i] and arr[check_minus] <= arr[i]
      return check_plus
    elsif arr[check_minus] > arr[i] and arr[check_plus] > arr[i]
      return check_minus
    elsif arr[check_minus] <= arr[i] and arr[check_plus] <= arr[i]
      benchmark = benchmark + 1
    end
  end
end

=begin
  if array_hashed[i-1] > array_hashed[i]
    analyze_hash_minus << array_hashed.index(arr[i-1])
  elsif array_hashed[i+1] > array_hashed[i]
    analyze_hash_plus << array_hashed.index(arr[i+1]  
  end

  if analyze_hash_minus == analyze_hash_plus
    analyze_hash_plus = nil
  end

  if analyze_hash_minus.any? == true and analyze_hash_plus.any? == false
    return analyze_hash_minus[0]
  elsif analyze_hash_plus.any? == true and analyze_hash_minus.any? == false
    return analyze_hash_plus[0]
  end
=end


=begin
  next_larger_then_i = {}
  arr.each_with_index { |value, index| next_larger_then_i[index] = value }
  next_larger_then_i.delete_if { |key, value| value <= arr[i] }
  sorted_larger = next_larger_then_i.sort_by { |k| k[1] } 
  larger_value = sorted_larger[0][1]
  possible_index = sorted_larger[0][0]
  sorted_larger.delete_if { |key, value| value > larger_value }
  if sorted_larger.count == 1
    return possible_index
  end
 
  benchmark_i = {arr[i]=>i}
  subtract_index = benchmark_i
  plus_index = benchmark_i
  until subtract_index == top_value or plus_index == top_value
    subtract_index -= 1
    plus_index += 1
  end 
  if subtract_index == top_value
    
  else

  end
=end

describe "#nearest_larger" do
  it "handles a simple case to the right" do
    nearest_larger([2,3,4,8], 2).should == 3
  end

  it "handles a simple case to the left" do
    nearest_larger([2,8,4,3], 2).should == 1
  end

  it "treats any two larger numbers like a tie" do
    nearest_larger([2,6,4,8], 2).should == 1
  end

  it "should choose the left case in a tie" do
    nearest_larger([2,6,4,6], 2).should == 1
  end

  it "handles a case with an answer > 1 distance to the left" do
    nearest_larger([8,2,4,3], 1).should == 0
  end

  it "handles a case with an answer > 1 distance to the right" do
    nearest_larger([2,4,3,8], 1).should == 3
  end

  it "should return nil if no larger number is found" do
    nearest_larger([2,6,4,8], 3).should == nil
  end
end
=begin
  it "blah blah" do
    nearest_larger([6,2], 1).should == 0
  end

  it "blah blah 2" do
    nearest_larger([1,10,2,2,2,11], 1).should == 5
  end

  it "blah blah 3" do
    nearest_larger([4,2,2,2,5], 0).should == 4
  end

  it "blah blah 4" do
    nearest_larger([5,2,2,2,4], 4).should == 0
  end

  it "blah blah blah 5" do
    nearest_larger([2,11,3,5,5,5,5,10,5], 7).should == 1
  end
end
=end
