aniversario = Time.new(2005, 1, 18)
verao = Time.new(2020, 5, 21)
inverno = Time.new(2022, 3, 10)
dia_da_independencia = Time.new(1822, 9, 7)

puts aniversario > dia_da_independencia
puts verao >= inverno
puts dia_da_independencia > inverno
puts aniversario == inverno
puts verao.between?(aniversario, inverno) # está entre (aniversario e winter)