puts "Informe o nome do filme"
nome = gets.chomp


puts "Informe o ano de lançamento do filme"

ano = gets.chomp.to_i


puts "Informe o preço do filme"

preco = gets.chomp.to_f

# 1  - Concatenando os valores

puts "O filme #{nome} foi lançado em #{ano}"