require 'pry'

def my_find(collection)
  i = 0 
  block_return_values = []
  while i < collection.length 
    block_return_values << yield (collection[i])
    i += 1
  end
  
  if block_return_values.include(false)
    false
  else
    true 
  end

end

my_find([1..100]) {|i| i % 3 ==0 && i % 5 == 0}