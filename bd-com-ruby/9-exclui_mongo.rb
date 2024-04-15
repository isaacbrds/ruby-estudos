require 'mongo'

cliente = Mongo::Client.new(['localhost:27017'], database: 'ecommerce')

resultado = cliente[:produtos].delete_one({nome: 'Smartphone'})

if resultado.deleted_count.positive?
    puts "Registro excluido com sucesso!"
else
    puts "Nenhum documento foi excluído"
end