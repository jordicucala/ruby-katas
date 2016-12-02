class Regex
  def valid_number?(number)
    number.match?() || number.match?()
  end

  def valid_email?(email)
    email.match(/(\w+@[a-zA-Z_]+?\.[a-zA-Z]{3})/) == email
    # email === /(\w+@[a-zA-Z_]\.(com|net|org|edu))/
  end
end
