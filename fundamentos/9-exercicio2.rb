puts "Digite o primeiro nome"
primeiroNome = gets.chomp

puts "Digite o segundo nome"
segundoNome = gets.chomp

puts "Digite o nome da empresa"
empresa = gets.chomp

#puts "O seu e-mail é: #{primeiroNome}.#{segundoNome}@#{empresa}.com"

email = ""

email << primeiroNome.downcase.split.join(".")
email << "."
email << segundoNome.downcase.split.join(".")
email << "@"
email << empresa.downcase.split.join(".")
email << ".com"
puts email