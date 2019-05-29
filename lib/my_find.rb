require 'pry'

def my_find(collection)
  i = 0 
  while i < collection.length 
    yield(collection[i])
  i += 1
  end
end

collection = (1..20).to_a
my_find(collection) { |num| num.odd? }
