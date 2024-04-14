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

    def info_techs
        puts "##Dados do Jogo##"
        puts "Nome do Jogo: #{@nome}"
        puts "Gênero do Jogo: #{@genero}"
        puts "Preço do Jogo: #{@preco}"
    end
end

class DownloadableGame < Game
    attr_accessor :tamanho_download

    def initialize(nome, genero, preco, tamanho_download)
        super(nome, genero, preco)
        @tamanho_download = tamanho_download
    end
end

game1 = Game.new("Fifa", "Esporte", 100)
game1.info_techs

game2 = DownloadableGame.new("Fifa 98", "Esporte", 100, 1)
game2.info_techs
