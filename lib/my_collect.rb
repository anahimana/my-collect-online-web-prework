def my_collect(array)
  if block_given?
    new_array = []
    i = 0
 
    while i < array.length
      new_array << yield(array[i])
      i = i + 1
    end
 
    new_array
  else
    puts "Hey! No block was given!"
  end
end

# array = ["Tim Jones", "Tom Smith", "Jim Campagno"]
# my_collect(array) do |name|
#   puts name.split(" ").first
# end