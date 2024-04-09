puts "Informe a idade"

idade = gets.chomp.to_i

case idade
    when  0..2
        puts "Bebê"
    when 3..12
        puts "Criança"
    when 13..18
        puts "Adolescente"
    else
        puts "Adulto"
end