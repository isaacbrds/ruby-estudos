require "minitest/autorun"

class Calculadora
    def soma(a,b)
        a + b
    end
    
    def subtracao(a,b)
        a - b
    end

    def divisao(a,b)
        a / b 
    end

    def multiplicacao(a,b)
        a * b
    end
end


class TestCalculadora < Minitest::Test
    def setup
        @calculadora = Calculadora.new
    end

    def test_soma
        assert_equal( 5 , @calculadora.soma(3,2), "Soma está errada!")
        assert_equal( 5 , @calculadora.soma(3,1), "Soma está errada!")
    end


    def test_subtracao
        assert_equal( 1 , @calculadora.subtracao(3,2), "Subtração está errada!")
        assert_equal( 5 , @calculadora.subtracao(3,1), "Subtração está errada!")
    end

    def test_divisao
        assert_equal( 3 , @calculadora.divisao(6,2), "Divisão está errada!")
        assert_equal( 3 , @calculadora.divisao(3,1), "Divisão está errada!")
        assert_raises(ZeroDivisionError, "Não está gerando uma exceção ao dividir por zero") do
            @calculadora.divisao(3,0)
        end
    end

    def test_multiplicacao
        assert_equal( 12 , @calculadora.multiplicacao(6,2), "Multiplicação está errada!")
        assert_equal( 3 , @calculadora.multiplicacao(3,1), "Multiplicação está errada!")
        assert_equal( 3 , @calculadora.multiplicacao(3,0), "Multiplicação está errada!")
    end
end