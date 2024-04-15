require 'mongo'

cliente = Mongo::Client.new(['localhost:27017'], :database => 'ecommerce')

resultado = cliente[:produtos].insert_one({
    'nome' => 'Smartphone',
    'categoria' => {
        'nome' => 'Eletrônicos'
    }
})

if resultado.successful?
    puts "Dados Inseridos com sucesso!"
else
    puts "Falha ao inserir dados"
end