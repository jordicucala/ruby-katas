lines = File.readlines("../oliver.txt")
line_count = lines.size
text = lines.join
character_count = text.length
character_count_nospaces = text.gsub(/\s+/, '').length
words = text.split.length
sentences = text.split(/\.|\?|!/).length
paragraphs = text.split(/\n\n/).length


puts "#{line_count} lines"
puts "#{character_count} characters"
puts "#{character_count_nospaces} character excluding spaces"
puts "#{words} words"
puts "#{sentences} sentences"
puts "#{paragraphs} paragraphs"
puts "#{words / sentences} words per sentence (average)"
puts "#{sentences / paragraphs} sentences per pagragraph (average)"