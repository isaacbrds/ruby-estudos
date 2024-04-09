puts "Digite a altura do usuário"

altura = gets.chomp.to_f

puts "Digite o peso do usuário"

peso = gets.chomp.to_f

imc = peso / (altura ** 2)

puts "Seu IMC é: #{'%.2f' % imc}"