#Array creation
a = [1, 2, 3, 4, 5]
b = Array.[](1, 2, 3, 4, 5)
c = Array[1, 2, 3, 4, 5]
d = (1..5).to_a
e = (1...6).to_a
p a
p b
p c
p d
p e

#Array size
p a.size
p a.length

#Array Sort
a = [4,5,6,7,5,4,3,2,1] 
p a
p a.sort
p a.sort {|x,y| x <=> y}
p a.sort {|x,y| y <=> x}

#Randomizing an Array
a = [1, 2, 3, 4, 5]
p a.shuffle
p a.shuffle
p a.sample #pick an array element at random
p a.sample(3) 

#Removing nil Values
a = [1,nil,3,4,5,nil,5,nil]
p a 
p a.compact
p a
p a.compact! 
p a

#Removing specific element 
a = [1, 2, 3, 4, 5]
p a.delete_at(3)
p a

#Delete all instances of a certain piece of data
a = ["jordi","mal", "jordi", "mal"]
p a
a.delete("mal")
p a

a = ["jordi","mal", "jordi", "mal"]
p a
a.delete_if {|element| element == "mal"}
p a



