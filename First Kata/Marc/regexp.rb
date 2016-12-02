#a

reg1 = '407-555-1212'
reg2 = '321-555-1212'
REG_EXP_NUM = /(\d{3}\-\d{3}\-\d{4})/

if reg1.match(REG_EXP_NUM) && reg2.match(REG_EXP_NUM)
  puts "ok num"
else
  puts "no num"
end

#email

valid = 'sara@exampe.edu'
invalid = 'sata@example!com'

REG_EXP_MAIL = /(\w+@[a-zA-Z_]+?\.[a-zA-Z]{2,6})/

if valid.match(REG_EXP_MAIL)
  puts "ok mail"
else
  puts "no mail"
end
