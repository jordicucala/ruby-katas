#Create a regex expression that only permits this:
# a) 407-555-1212 or 321-555-1212
/^(4|3)\-(0|2)\-(7\1)\-(555)\-(1212)$/
# b) email 
# 	valid: sara@example.com, sara@example.net , sara@example.org, sara.example.edu
/^(sara)\@example.[(com)|(net)|(org)|(edu)]$/
# 	invalid: sara@example!com , sara@example , sara@example.comlasada
/^(sara)\@example[^(\!com|\|.comlasada|)]$/
# c) ok, Okay, sure, yes, y
