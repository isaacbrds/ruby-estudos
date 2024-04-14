class Game
    def initialize
        puts "Novo objeto criado!"
        @nome = "PES"
        @genero = "Esporte"
        @multiplayer = true
        @versions = [2019,2020]
        @preco = 20
    end
end

game = Game.new
puts game
p game