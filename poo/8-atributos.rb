class Game
    #attr_reader :nome, :genero, :versions #Apenas leitura
    #attr_writer :nome, :genero #Apenas escrita
    attr_accessor :nome, :genero 
    attr_reader :versions 

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
end

game = Game.new

puts game.nome
game.nome = "Fifa"
puts game
puts game.genero
puts game.genero = "Ação"
puts game