require 'rspec/autorun'

# Write a function, `rec_intersection(rect1, rect2)` and returns the
# intersection of the two.
#
# Rectangles are represented as a pair of coordinate-pairs: the
# bottom-left and top-right coordinates (given in `[x, y]` notation).
#
# Hint: You can calculate the left-most x coordinate of the
# intersection by taking the maximum of the left-most x coordinate of
# each rectangle. Likewise, you can calculate the top-most y
# coordinate of the intersection by taking the minimum of the top most
# y coordinate of each rectangle.
#
# Difficulty: 4/5

def rec_intersection(rect1, rect2)
  x_minimum = 0
  if rect1[0][0] >= rect2[0][0]
    x_minimum = rect1[0][0]
  else
    x_minimum = rect2[0][0]
  end

  x_maximum = 0
  if rect1[1][0] < rect2[1][0]
    x_maximum = rect1[1][0]
  else
    x_maximum = rect2[1][0]
  end

  y_minimum = 0
  if rect1[0][1] >= rect2[0][1]
    y_minimum = rect1[0][1]
  else
    y_minimum = rect2[0][1]
  end

  y_maximum = 0
  if rect1[1][1] < rect2[1][1]
    y_maximum = rect1[1][1]
  else
    y_maximum = rect2[1][1]
  end

  result = [[x_minimum, y_minimum], [x_maximum, y_maximum]]

  if rect1[1][1] < rect2[0][1] and rect1[1][0] < rect2[0][0]
    return nil
  else
    return result
  end
end

describe "#rectangle_intersection" do
  it "handles a simple case" do
    rec_intersection(
      [[0, 0], [2, 1]],
      [[1, 0], [3, 1]]
    ).should == [[1, 0], [2, 1]]
  end

  it "returns the smaller rectangle if engulfed completely" do
    rec_intersection(
      [[1, 1], [2, 2]],
      [[0, 0], [5, 5]]
    ).should == [[1, 1], [2, 2]]
  end

  it "returns nil if there is no intersection" do
    rec_intersection(
      [[1, 1], [2, 2]],
      [[4, 4], [5, 5]]
    ).should == nil
  end

  it "handles a more complex case" do
    rec_intersection(
      [[1, 1], [5, 4]],
      [[2, 2], [3, 5]]
    ).should == [[2, 2], [3, 4]]
  end
end
