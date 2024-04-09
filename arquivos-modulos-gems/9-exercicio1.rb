module CalculaArea
    def self.area_quadrado(base, altura)
        base * altura
    end

    def self.area_triangulo(base, altura)
        base * altura / 2
    end
end

puts CalculaArea.area_quadrado(2,2)
puts CalculaArea.area_triangulo(2,2)