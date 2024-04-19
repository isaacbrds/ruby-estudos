require 'minitest/autorun'

class Carrinho
    def initialize
        @itens = {}
    end

    def adidicona_item(produto, quantidade)
        @itens[produto] = quantidade
    end

    def remove_item(produto)
        @itens.delete(produto)
    end

    def conta_item
        @itens.values.sum
    end

    def preco_total
        preco_produtos = {'Headphones' => 30, 'Livro' => 10}
        @itens.sum {|produto, quantidade| quantidade * preco_produtos[produto]}
    end

    def clear
        @itens = {}
    end
end

class TestCarrinho < Minitest::Test
    def setup
        @carrinho = Carrinho.new
    end

    def teardown
        @carrinho.clear # Limpa o carrinho de compras
    end

    def test_adidicona_item
        @carrinho.adidicona_item('Laptop', 1)
        assert_equal(1, @carrinho.conta_item, "Falha ao adicionar item ao carrinho")
    end

    def test_remove_item
        @carrinho.adidicona_item('Mouse', 2)
        @carrinho.remove_item('Mouse')
        assert_equal(0, @carrinho.conta_item, "Falha ao remover item do carrinho")
    end

    def test_preco_total
        @carrinho.adidicona_item('Headphones', 1)
        @carrinho.adidicona_item('Livro', 2)
        # 1*30 + 2*10 = 50
        assert_equal(50, @carrinho.preco_total, "Cálculo incorreto do preço total")
    end
end
