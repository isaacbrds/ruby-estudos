class Veiculo
    def initialize( placa, marca)
        @placa = placa
        @marca = marca
    end

    def detalhes
       puts "Placa: #{@placa}- Marca: #{@marca}"
    end
end

class Moto < Veiculo
    def initialize(placa, marca, cilindrada)
        super(placa, marca)
        @cilindrada = cilindrada
    end

    def detalhes
        super
        "CC: #{@cilindrada}"
    end
end

class Carro < Veiculo
    def initialize(placa, marca, portas)
        super(placa, marca)
        @portas = portas
    end

    def detalhes
        super
        "Portas: #{@portas}"
    end
end

def exibir_detalhes(veiculo)
    puts veiculo.detalhes
end

carro = Carro.new("ABC123", "Toyota", 4)
moto = Moto.new("XYZ123", "Honda", 250)

exibir_detalhes(carro)
exibir_detalhes(moto)