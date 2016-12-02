read = File.open('../oliver.txt', 'rb')

content = read.read
#chars
puts content.length
#Excluding spaces
puts content.split(' ').length
#word count
