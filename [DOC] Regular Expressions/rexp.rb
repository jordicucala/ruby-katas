word = 'asdsdasdrubyararasdasa'
p word.match(/ruby/) #match the single word ruby

p "-- Escaping Special Characters --"
str = "[*?]"
p str 
p Regexp.escape(str) #"\\[\\*\\?\\]"  -> escapes any character 

p "-- Anchors --"
p "A anchor is a special expression that matches a position in a string rather than a character or sequence of characters"

p "[=~] - The equal-tilde operator in ruby is the “match” operator.  It take an regular expression on the left hand side and the string to match on the right hand side"
string = "abcXdefXghi"
p /def/ =~ string  # 4
p /abc/ =~ string  # 0
p /^def/ =~ string # nil
p /def$/ =~ string # nil
p /ghi$/ =~ string # 8

p "[^ $] - However, I’ve told a small lie. These anchors don’t actually match the beginning and end of the string but rather of the line"

string = "abc\ndef\nghi"
p /^abc/ =~ string #0
p /^def/ =~ string #4
p /^ghi/ =~ string #8

p "[\A \Z] - However, we also have the special anchors \A and \Z, which match the real beginning and end of the string itself"

string = "abc\ndef\nghi"
p /\Aabc/ =~ string #0
p /\Adef/ =~ string #nil
p /ghi\Z/ =~ string #8

p "-- Word Boundery --"
str = "this is a test"
p str.gsub(/\b/, "|") #"|this| |is| |a| |test|"
p str.gsub(/\b/, "-") #"-this- -is- -a- -test-"
p str.gsub(/\B/, "-") #"t-h-i-s i-s a t-e-s-t"

phone = "978-65-4320"
p phone.match(/^\d\d\d-\d\d-\d\d\d\d$/)
p phone.match(/^\d{3}-\d{2}-\d{4}$/)

phone2 = "1978-65-4320"  
p phone.match(/^[1]?\d{3}-\d{2}-\d{4}$/)
p phone2.match(/^[1]?\d{3}-\d{2}-\d{4}$/)

str5 = "x" * 5
str2 = "x" * 2
str3 = "x" * 3
p str5.match(/x{5}/)

p str5.match(/x{2,5}/) #Match 2-5
p str3.match(/x{2,5}/)
p str2.match(/x{2,5}/)

/x{,8}/ # Match up to 8 xs
/x{3,}/ # Match at least 3 xs









