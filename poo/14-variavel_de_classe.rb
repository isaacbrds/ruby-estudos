class Game
    #attr_reader :nome, :genero, :versions #Apenas leitura
    #attr_writer :nome, :genero #Apenas escrita
    attr_accessor :nome, :genero 
    attr_reader :versions, :preco 

    @@num_jogos = 0


    def initialize(nome, genero, preco)
        @nome = nome
        @genero = genero
        @preco = preco

         #utilizando variável de classe
         @@num_jogos += 1
    end

    
    
    def to_s
        "#{@nome}-#{@genero}-#{@multiplayer}-#{@versions}"
    end

    def self.total_jogos
        @@num_jogos
    end
end

game1 = Game.new("Fifa", "Esporte", 100)
game2 = Game.new("PES", "Esporte", 150)
game3 = Game.new("Olimpic Games", "Esporte", 120)

puts Game.total_jogos