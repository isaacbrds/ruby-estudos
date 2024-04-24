module WelcomeHelper
    def formatar_preco(preco)
        number_to_currency(preco, unit: "R$ ", separator: ",", delimiter: ".")
    end
end
