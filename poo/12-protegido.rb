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

    protected 

    def desconto(desconto)
        @preco -= (@preco * desconto / 100)
    end

    public 

    def aplica_20_de_desconto
        desconto(20)
    end
end

game = Game.new("Fifa", "Esporte", 100)

game.send( :desconto, 10)

puts game