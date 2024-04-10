require "csv"

CSV.open("dados/exemplo.csv", "w") do |csv|
    csv << ["Nome", "Idade", "Cidade"]
    csv << ["João", 25, "Crato"]
    csv << ["Paulo", 22, "Juazeiro do Norte"]
end

CSV.foreach("dados/exemplo.csv", headers: true) do |linha|
    nome = linha["Nome"]
    idade = linha["Idade"]
    cidade = linha["Cidade"]

    puts nome, idade, cidade
end