class Game
    def initialize
        puts "Novo objeto criado!"
        @nome = "PES"
        @genero = "Esporte"
        @multiplayer = true
        @versions = [2019,2020]
        @preco = 20
    end

    def nome
        @nome
    end

    def genero
        @genero
    end

    def multiplayer
        @multiplayer
    end
end

game = Game.new

puts game.nome
puts game.genero