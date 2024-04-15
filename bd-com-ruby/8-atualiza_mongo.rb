require 'mongo'

cliente = Mongo::Client.new(['localhost:27017'], database: 'ecommerce')

resultado = cliente[:produtos].update_one({nome: 'Smartphone'}, { 
    "$set" =>  {categoria: {nome: 'Dispositivos Móveis'} }
})

if resultado.successful?
    puts "Dados Atualizados com sucesso!"
else
    puts "Nenhum documento foi atualizado"
end