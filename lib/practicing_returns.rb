require 'pry'

def hello(array)
  index = 0
  while index < array.length
    yield(array[index])
    index += 1
  end
end


hello(["Tim", "Tom", "Jim"]) { |name| puts "Hi, #{name}" }
