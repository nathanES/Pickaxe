a = [1,3,5,7,9]
#index, length
print a[1,3] # => [3,5,7]
puts ""
print a[3,1] # => [7]
puts ""
print a[-3,2] # =>[5,7]
puts ""
#index first, index last (last included)
print a[1..3]  # => [3,5,7]
puts ""
#index first, index last (last excluded)
print a[1...3] #[3,5]
puts ""


b = [1,3,5,7,9]
b[2,2] ="cats" # replace the element 2 and remove the index included in the length
puts b[2] # "cats"
puts b[3] # 9


c = [1,3,5,7,9]
c[2,0] = "dog" #insert dog at index 2 and shift the array to the right because length is 0
print c # [1,3,"dog",5,7,9]
puts ""


d= [1,3,5,7,9]
d[0..3] = [] # delete the index 0 to 3 and shift the array to the left
print d #[7,9]
puts ""


e = [1,3,5,7,9]
e[5..6] = 99, 45 # replace the 5 to 6 index with 99, then 45 to the second index changed
print e # [1,3,5,7,9, nil, nil 99, 45]
puts ""


f = [ "ant", "bee", "cat", "dog", "elk"]
print f # => ["ant", "bee", "cat", "dog", "elk"]
puts ""
# you can use this instead when array is used only with word
g = %w[ant bee cat dog elk]
print g # => ["ant", "bee", "cat", "dog", "elk"]
puts ""

# to use symbol instead of strings
h = %i[:ant :bee :cat :dog :elk]
puts ""
print h #[:ant, :bee, :cat, :dog, :elk]

# with array you can do stacks, sets, queues, dequeues, and FIFO queues
# stack (LIFO) for example
stack =[]
stack.push "red"
stack.push "green"
stack.push "blue"
print stack # => ["red", "green", "blue"]
puts ""
# remove methods from the array
puts stack.pop # => "blue"
puts stack.pop # => "green"
# queue FIFO
queue = []
queue.push "red"
queue.push "green"
print queue  # => ["red", "green"]
puts ""
# remove methods from the array
puts queue.shift # => "red"
puts queue.shift # => "green"


array = [1,2,3,4,5,6,7]
#These methods don't remove value from the array
print array.first # => 1
puts ""
print array.first(4) # => [1,2,3,4]
puts ""
print array.last # => 7
puts ""
print array.last(4) # => [4,5,6,7]
puts ""