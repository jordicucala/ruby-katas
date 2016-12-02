class Regex
  def valid_number?(number)
    # REGEXP = /([0-9]{4}\-5{3}\-12{2})/
    number.match(/([0-9]{4}-555-1212)/)
    # number.match() == number || number.match() == number
  end

  def valid_email?(email)
    email.match(/(\w+@[a-zA-Z_]+?\.[a-zA-Z]{3})/) == email
    # email === /(\w+@[a-zA-Z_]\.(com|net|org|edu))/
  end

  def positive_word(word)
    (word.match(/(ok|Okay|sure|yes|y)/))
  end
end
