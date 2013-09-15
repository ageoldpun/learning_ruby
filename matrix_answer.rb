require 'matrix'
  
def read_matrix
  puts "Enter number of column for matrix: "
  _cols = gets.chomp!.to_i
	    
  puts "Enter number of rows for matrix: "
  _rows = gets.chomp!.to_i
		     
  raise "Invalid sizes" unless _rows.is_a? Fixnum && _cols.is_a? Fixnum
			   
  puts "Enter the elements of the matrix (one per line)"
    a = Matrix.build(_rows, _cols) do |m|
      m = gets.chomp!.to_i
    end
					    
  raise "An element is not a number" if a.any? { |eL| !eL.is_a? Fixnum }
  
  a
end
						       
puts "reading first matrix..."
mat1 = read_matrix
puts "reading second matrix..."
mat2 = read_matrix
							    
begin
  puts mat1 * mat2
rescue ExceptionForMatrix::ErrDimensionMismatch => e
  puts e.message
end
								      
								       
								        
   # or if we don't care about user input
   # following the C++ example ..to show you how concise Ruby is
									         
#Matrix.build(4) { rand } * Matrix.build(4) { rand }
