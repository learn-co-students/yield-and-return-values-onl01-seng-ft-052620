require 'pry'

def hello(array)
  array1 = []
  i = 0
  while i < array.length
    array1 << yield(array[i]) 
    i += 1
  end
  array1
end

binding.pry hello(["Tim", "Tom", "Jim"]) { |name| puts "Hi, #{name}" }
