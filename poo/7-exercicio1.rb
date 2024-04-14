class Projeto
    def initialize
        @nome = "Automacao Web"
        @orcamento = 100000
        @membros = [ "Fulano", "Siclano"]
    end

    def nome
        @nome
    end

    def orcamento
        @orcamento
    end

    def membros
        @membros
    end

    def orcamento=(novo_orcamento)
        @orcamento = novo_orcamento
    end

    def to_s
        "#{@nome}-#{ 'R$ ' '%.2f' % @orcamento}-#{@membros} "
    end
end

projeto = Projeto.new

puts projeto.nome
puts projeto.orcamento
puts projeto.membros

puts projeto
projeto.orcamento = 1000000

puts projeto

