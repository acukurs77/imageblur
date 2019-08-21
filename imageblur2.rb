#COMPLETE

class Image

  def initialize(list_of_numbers)
    @list_of_numbers = list_of_numbers
  end 

  def output_image
    @list_of_numbers.each do 
      puts x.join
    end
  end 

  def new_image
  	ones = coordinates_of_ones
  	@list_of_numbers.each_with_index do |x, row_number|
  	   x.each_with_index do |col, col_index|	
	       ones.each do |row_of_one, column_of_one|
	      	 if row_number == row_of_one && col_index == column_of_one
			       @list_of_numbers[row_number - 1][col_index] = 1 unless row_number == 0
             @list_of_numbers[row_number][col_index - 1] = 1 unless col_index == 0
             @list_of_numbers[row_number][col_index + 1] = 1 unless col_index >= 3
             @list_of_numbers[row_number + 1][col_index] = 1 unless row_number >= 3
	      	 end
	       end
	     end
  	end
  	
  end

  def coordinates_of_ones
  	all_coordinates = []
  	
  	@list_of_numbers.each_with_index do |x, row_number|
  	   x.each_with_index do |col, col_index|

  			if col == 1
				all_coordinates << [row_number, col_index]
  			end
  		end
  	end
  	all_coordinates
  end


end






#coordinates = [[1,1],[2,3]]

image = Image.new([
  [0, 0, 0, 0],
  [0, 1, 0, 0],
  [0, 0, 0, 1],
  [0, 0, 0, 0]
])

image.new_image
image.output_image


# 0100
# 1111
# 0111
# 0001



# 0000
# 0100
# 0001
# 0000