require 'matrix'
require 'rspec/autorun'

def read_matrix(matrix1, matrix2)
  Matrix.build(matrix1) { rand } * Matrix.build(matrix2) { rand }
end

describe "#read_matrix" do
  it "can multiply matrices" do
    read_matrix([[1,2,3],[0,2,-1],[1,1,1]],[[1,0],[3,-1],[0,1]]).should == [[7,1],[6,-3],[4,0]]
  end
end
