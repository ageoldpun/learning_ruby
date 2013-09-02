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

class Rect < Struct.new(:coords)
  def | rect
    return unless intersects?(rect) or rect.intersects?(self)
    new_x_coords = (x_coords + rect.x_coords).sort[1..2]
    new_y_coords = (y_coords + rect.y_coords).sort[1..2]
    new_x_coords.zip(new_y_coords)
  end

  def intersects? rect
    rect.x_coords.any? { |coord| Range.new(*x_coords).cover?(coord) } and
    rect.y_coords.any? { |coord| Range.new(*y_coords).cover?(coord) }
  end

  def x_coords
    coords.transpose[0]
  end
  
  def y_coords
    coords.transpose[1]
  end
end

def rec_intersection rect1, rect2
  rect1 = Rect.new(rect1)
  rect2 = Rect.new(rect2)
  rect1 | rect2
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
