require 'date'

puts Date.new(1994)
puts Date.new(1995,1)
puts Date.new(1994,3,25)

aniversario = Date.new(1994,5,1)
puts aniversario.day
puts aniversario.month
puts aniversario.year

puts aniversario.wday
puts aniversario.monday?
puts aniversario.sunday?