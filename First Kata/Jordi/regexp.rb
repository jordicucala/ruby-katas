array_chars = ['407-555-1212','407-555-1212','434-555-1212','457-555-1212', '321-555-1212']

array_chars.map{|chars| p chars.match(/^(407|321)-555-1212$/)}


emails = ['Sara@example.COM','sara@example.com', 'sara@example.net' , 'sara@example.org', 'sara.example.edu', 'sara@example!com', 'sara@example.comlasada']
emails.map{ |email| p email.match(/^\w+@\w+\.(com|net|org|edu)$/i)}

array_chars = ['ok','Okay','sure','yes','y']
array_chars.map{|chars| p chars.match(/\b(ok(ay)?|sure|y(es)?)\b/i)	}

