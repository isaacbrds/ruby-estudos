File.open("dados/cursos.txt", "w") do |file|
    file.puts "Hello World!"
    file.write "Alô mundo!"
end


#Alternativa

File.open("dados/cursos.txt", "a") do |file|
    puts "Qual curso deseja fazer"
    curso = gets.chomp
    file.puts curso
end