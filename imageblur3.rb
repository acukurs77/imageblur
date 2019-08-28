#COMPLETE

class Image

  def initialize(list_of_numbers)
    @list_of_numbers = list_of_numbers
  end 

  def output_image
    @list_of_numbers.each do |x|
      puts x.join
    end
  end 

  def distance_check(row_number, row_of_one, col_index, column_of_one, n)
	if (row_number - row_of_one).abs + (col_index - column_of_one).abs <= n
		true
	else
		false
	end
  end


  def new_image(n)
  	ones = coordinates_of_ones
  	@list_of_numbers.each_with_index do |x, row_number|
  	   x.each_with_index do |col, col_index|	
	       ones.each do |row_of_one, column_of_one|
	      	 if distance_check(row_number, row_of_one, col_index, column_of_one, n) == true
	      	 	@list_of_numbers[row_number][col_index] = 1
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



image = Image.new([
[0, 0, 0, 0, 0, 0],
[0, 0, 0, 0, 1, 0],
[0, 0, 0, 0, 0, 0],
[0, 1, 0, 0, 0, 0],
[0, 0, 0, 0, 0, 0],
[0, 0, 0, 0, 0, 0],
[0, 0, 0, 0, 0, 1]
])


image.new_image(3)
image.output_image





