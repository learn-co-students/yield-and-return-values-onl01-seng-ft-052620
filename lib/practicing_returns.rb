require 'pry'

def hello(array)
  i = 0
	new_array= []	
  while i < array.length
    new_array << yield(array[i])
    i += 1
  end
  new_array
end

hello(["Tim", "Tom", "Jim"]) { |name| puts "Hi, #{name}" }
