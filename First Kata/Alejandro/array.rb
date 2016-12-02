elements = ['ruby', 'rails', 'test', 'gympass', 'bcn']

#a) Get the first element of array
elements.first
#b) Get the last element of array
elements.last
#c) Add the new element 'new'
elements << "new"
#d) Remove the last element
d.pop
#e) Remove the 'test' element
#f) concat wit this array [true,true,true]
d + [true,true,true]
#j) Print only pair numbers; numbers = [1,2,3,4,5,6,7,8,9,10]

#No recuerdo como era usando '[0..2,4,6]', voy a usar método poco ortodoxo
position = 1
numbers.each do |n|
	puts "#{n}" if position%2 == 0
	position += 1
end
