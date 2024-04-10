require "faker"
require "csv"
puts Faker.class
puts Faker::Name.name
puts Faker::Name.first_name
puts Faker::Name.last_name

dados = []

20.times do
    nome = Faker::Name.name
    email = Faker::Internet.email
    telefone = Faker::PhoneNumber.phone_number
    dados << [nome, email, telefone]
end

arquivo_csv = "dados/exemplo_fake.csv"

CSV.open(arquivo_csv, "w") do |csv|
    csv << ["Nome", "E-mail", "Telefone"]
    dados.each do |dado|
        csv << dado
    end
end

puts "Arquivo criado com sucesso!"