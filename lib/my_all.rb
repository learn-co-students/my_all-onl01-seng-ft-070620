require 'pry'
def my_all?(array)
  i = 0
  new_array = []
  while i < array.length
  if block_given?
    new_array << yield(array[i])
  end
  i += 1
end

  !new_array.include?(false)
end