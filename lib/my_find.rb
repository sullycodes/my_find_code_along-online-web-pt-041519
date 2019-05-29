require 'pry'

def my_find(collection)
  i = 0 
  while i < collection.length 
  # yeild passes the element to the block outside as 
  # part of the my_find call. which ever number returns true
  # first will be returned by the method - which is just what
  # .find does
    if yield(collection[i])
      return collection[i]
    end
    i += 1
  end
end

collection = (1..20).to_a
my_find(collection) { |num| num.even? }
