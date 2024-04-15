require 'mongo'

cliente = Mongo::Client.new(['localhost:27017'], database: 'ecommerce')


collection = cliente[:produtos]
documentos = collection.find

puts "Produtos"

documentos.each do |documento|
    puts "Nome: #{documento[:nome]} - Categoria: #{documento[:categoria][:nome]}"
end