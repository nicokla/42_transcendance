# & is the intersection operator 
puts [1,2,3] & [3,4,5]  #  prints 3

# + is the addition operator 
p [1,2,3]+ [3,4,5]  #  prints 1,2,3,3,4,5

# - removes items from the first array that appear in the second
puts [1,2,3] - [3,4,5]  #  prints 1,2

# pop returns the last element and removes it from the array
alpha = ["a","b","c","d","e","f"]
puts "pop="+alpha.pop   # pop=f
puts alpha.inspect      # ["a", "b", "c", "d", "e"]

# push appends elements to the end of an array
alpha = ["a","b","c"]
alpha.push("x","y","z")
puts alpha.inspect      # ["a", "b", "c", "x", "y", "z"]

# shift returns the first element and removes it from the array
alpha = ["a","b","c","d","e","f"]
puts "shift="+alpha.shift   # shift=a
puts alpha.inspect      # ["b", "c", "d", "e", "f"]

# unshift appends elements to the beginning of an array
alpha = ["a","b","c"]
alpha.unshift("x","y","z")
puts alpha.inspect      # ["x", "y", "z", "a", "b", "c"]
