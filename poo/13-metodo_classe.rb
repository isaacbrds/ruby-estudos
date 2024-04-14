class Game
    #attr_reader :nome, :genero, :versions #Apenas leitura
    #attr_writer :nome, :genero #Apenas escrita
    attr_accessor :nome, :genero 
    attr_reader :versions, :preco 

    def initialize
        @nome = "PES"
        @genero = "Esporte"
        @multiplayer = true
        @versions = [2019,2020]
        @preco = 20
    end
    
    def to_s
        "#{@nome}-#{@genero}-#{@multiplayer}-#{@versions}"
    end

    #Método de Classe
    def self.desconto(preco, porcentagem)
        preco -= (preco * (porcentagem.to_f / 100))
    end
end

game = Game.new

puts game
puts game.preco
Game.desconto(game.preco, 10)
puts game.preco