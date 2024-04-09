nome = "Star Wars"

description = <<Text 
O filme #{nome} é um clássico que trata sobe um universo alternativo
    em que existem os Jedi considerados guerreiros honrados e os Sith 
    que estão mais associados com o mal
Text

puts description[0]
puts description[-2]
puts description[0..10]
puts description.slice(0,10)

#Quebrando uma string
print description.split()
puts 
print description.split("trata")

#Quebrando em caracteres
print description.chars

#Conta as ocorrencias na string
puts description.count("a")

# Maiusculo e Minusculo
puts nome.upcase
puts nome.downcase
puts nome.capitalize
puts nome.swapcase

# Verificacao de indice
puts description.index("filme")

# Alterar palavras
puts description.gsub("clássico", "classudo")

# Outras Operações
puts "Ruby".center(10, "#")
puts "#" * 50
puts description.include?("filme")
puts "                 Ruby                 ".strip
puts "              Ruby".lstrip
puts "Ruby              ".rstrip
