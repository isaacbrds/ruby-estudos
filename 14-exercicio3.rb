puts "Digite o numero desejado"
numero = gets.chomp.to_i
fib = 1
fibPrev = 0

while fib <= numero
    puts fib
    fibPrev, fib = fib, fib + fibPrev
end

