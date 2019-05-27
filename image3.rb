class NewImage
  def initialize (pic)
    @pic = pic
  end

  def getting_one
    one = []
    @pic.each_with_index do |data, row_number|
      data.each_with_index do |item, col_number|
        if item == 1
          one << [row_number, col_number]
        end
      end
    end
    one
  end

  def blur (distance)
    distance.times do
      one = getting_one
      @pic.each_with_index do |data, row_number|
        data.each_with_index do |item, col_number|
          one.each do |found_row, found_col|
            if row_number == found_row && col_number == found_col
              @pic[row_number - 1][col_number] = 1 unless row_number == 0
              @pic[row_number + 1][col_number] = 1 unless row_number >= 7
              @pic[row_number][col_number - 1] = 1 unless row_number == 0
              @pic[row_number][col_number + 1] = 1 unless row_number >= 5
            end
          end
        end
      end
    end
  end

  def output_image
    @pic.each do |data|
      puts data.join
    end
  end
end 

image = NewImage.new([
  [0, 0, 0, 0, 0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0, 0, 0, 0, 0],
  [0, 0, 0, 1, 0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0, 0, 0, 0, 1]
])
image.output_image
puts 
image.blur(3)
image.output_image


