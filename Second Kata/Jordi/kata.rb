array = [1, 2, 3, 4, 5, 6,7 , 8, 9, 10]

p "-- Exercise 1 --"
# one line version
array.each{ |number| puts number}
array.each{ |number| p number} #we can use p instead of puts

# multi-line version
array.each do |number|
	puts number
end

p "-- Exercise 2 --"

# one line version
array.each { |number| puts number if number > 5 }

# multi-line version
array.each do |number|
  if number > 5
    puts number
  end
end

p "-- Exercise 3 --"

# one line version
new_array = array.select { |number| number % 2 != 0 }
p new_array

# multi-line version
new_array = array.select do |number|
  number % 2 != 0
end
p new_array


p "-- Exercise 4 --"
new_array = array.reject { |number| number % 2 != 0 }
p new_array

p "-- Exercise 5 --"
new_array = array.map{ |number| number if number.odd? }
p new_array
new_array = array.map{ |number| number if number.even? }
p new_array
array.map{ |number| p number if number.odd? }
array.map{ |number| p number if number.even? }

p "-- Exercise 6 --"
new_array = array.collect{ |number| number if number.even? }
p new_array

p "-- Exercise 7 --"
p "MAP" 
p "Performs an action on each array element. The original array is not modified. Returns the modified array."
p [1,2,3,4,5,6,7,8,9,10].map{|e| e*3 }

p "EACH"
p "Executes an action using as parameter each element of the array. Returns the unmodified array."
p [1,2,3,4,5,6,7,8,9,10].each{|e| print e.to_s+"!" }

p "COLLECT"
p "Alias for 'map'"
p "Runs an expression for each array element and, if it is true, that element gets added to the output which is returned"
p [1,2,3,4,5,6,7,8,9,10].select{|el| el%2 == 0 }
#http://queirozf.com/entries/ruby-map-each-collect-inject-reject-select-quick-reference

p "-- Exercise 8 --"
a = ['white snow', 'winter wonderland', 'melting ice',
     'slippery sidewalk', 'salted roads', 'white trees']
a = a.map { |pairs| pairs.split }
a = a.flatten
p a

p "-- Exercise 9 --"
begin 
	file = open("/unexistant_file")
	if file
	  puts 'File opended successfully'	
	end
rescue 
	p 'File not found!'
end	  


p "-- Exercise 10 --"
fname = "/unexistant_file"
begin 
	p fname
	file = open(fname)
		if file
	  puts 'File opended successfully'	
	end
rescue
	fname = "../Explanation.txt"
	retry
end	
