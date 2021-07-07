require 'pry'

# Standard way to solve:

# def my_all?(collection)
#     i = 0
#     block_return_values = []
#     while i < collection.length
#         block_return_values << yield(collection[i])
#         i += 1
#     end 

#     if block_return_values.include?(false)
#         false 
#     else 
#         true 
#     end 
# end


# refactored way to solve: 

def my_all?(collection)
    i = 0

    while i < collection.length 
        return false if !yield(collection[i])
        i += 1
    end 
    true 
end 