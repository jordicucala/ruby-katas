array = ['ruby', 'rails', 'test', 'gympass', 'bcn']
p array.first
p array[0]
p array.last
p array[-1]
p array[array.size - 1]
array.pop
p array 
array.delete('test')
p array
array.concat([true]*3)

numbers = [1,2,3,4,5,6,7,8,9,10]
numbers.map{|number| p number if number.even?}