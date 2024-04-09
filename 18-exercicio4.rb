while true
    puts "Digite o primeiro numero ou q para sair"
    numero1 = gets.chomp
    
    
    puts "Digite o segundo numero ou q para sair"
    numero2 = gets.chomp

    puts "Digite a operação desejada"
    operacao = gets.chomp

    break if numero1.downcase == "q" or numero2.downcase == "q"

    numero1, numero2 = numero1.to_i , numero2.to_i
    
    resultado = lambda { |num1, num2, op|  puts eval("#{num1} #{op} #{num2}")}
    puts resultado
end

