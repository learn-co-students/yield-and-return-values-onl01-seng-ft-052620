require 'pry'

# def hello(array)
#   i = 0
#   while i < array.length
#     binding.pry
#     yield(array[i])
#     i += 1
#   end
# end

def hello(array)
  i = 0
  collection = [] #empty array that will have the return values frm line 16
  while i < array.length
    collection << yield(array[i]) #pushed the return value to the empty array
    i += 1
  end
  collection #need to return the new array at the end of the method
end

hello(["Tim", "Tom", "Jim"]) { |name| "Hi, #{name}" }
