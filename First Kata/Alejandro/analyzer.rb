def character_count
	self.length
end

def character_count_no_spaces
	self.gsub(/[\ ]/, "").split("")
end

def word_count
	self.split(" ").length
end

def sentence_count
	self.split(/[\,\.\?\!]/).length
end

def paragraph_count
	self.split(". ").length
end

def average_words_per_sentence
	array_sentence = self.split(/[\,\.\?\!]/)
	average = 0
	array_sentence.each do |sentence|
		average += sentence.word_count
	end

	average/array_sentence.length
end

def average_sentences_per_paragraph
	array_paragraph = self.split(". ")
	average = 0

	array_paragraph.each do |paragraph|
		average += paragraph.sentence_count
	end

	average/array_paragraph.length
end