class Game
    def initialize
        puts "Novo objeto criado!"
        @nome = "PES"
        @genero = "Esporte"
        @multiplayer = true
        @versions = [2019,2020]
        @preco = 20
    end

    def informacao 
        puts "O jogo é do genero #{@genero} e as versões #{@versions}"
    end

    def ficha_tecnica
        puts "Dados do jogo"
        puts " Nome: #{@nome} \n Genero: #{@genero} \n Preço do jogo #{@preco}"
    end

    def to_s
        "#{@nome} - #{@versions}"
    end
end

game = Game.new
puts game.informacao
puts game.ficha_tecnica
puts game