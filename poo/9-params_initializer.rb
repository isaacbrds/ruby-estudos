class Game
    attr_accessor :nome, :genero, :preco

    def initialize(nome, genero, preco)
        @nome = nome
        @genero = genero
        @preco = preco
    end

    def to_s
        "#{@nome} - #{@genero} - #{@preco}"
    end
end

game = Game.new("Fifa", "Esporte", 100)
puts game

game2 = Game.new("PES", "Esporte", 150)
puts game2