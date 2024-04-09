movies = File.open("dados/filmes.txt")
puts movies
puts movies.class

movies.each { |linha| puts linha }

# alternativa
file_path = "dados/filmes.txt"

File.open(file_path, "r") do |file|
    file.each_line { |linha| puts linha.strip unless linha.strip.empty? }
end