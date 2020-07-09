require 'pry'

def my_all?(collection)
  i = 0
  block_return_values = []
  while i < collection.length
    block_return_values << yield(collection[i])
    i = i + 1
  end #while
  #block_return_values

  if block_return_values.include?(false)
    false
  else
    true
  end #if
end #my_all?

#my_all?([1,2,3]) {|i| i < 10}
