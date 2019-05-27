class NewImage
 def initialize (pic)
  @pic = pic
 end

 def output_image
  @pic.each do |data|
    puts data.join
  end
 end
end 

image = NewImage.new([
  [0, 0, 0, 0],
  [0, 1, 0, 0],
  [0, 0, 0, 1],
  [0, 0, 0, 0]
])
image.output_image



###################
#.new >>
#output_image >> method
#def output_image inside the class to be able to communicate

#MVC = model view controller

# 0000
# 0100
# 0001
# 0000

