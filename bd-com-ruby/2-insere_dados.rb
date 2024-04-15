require 'pg'
require 'time'

conn = PG.connect(
    dbname: 'fliperama',
    user: 'postgres',
    password: '123456',
    host: 'localhost',
    port: 5432
)

# Array de registros que você deseja inserir na tabela
registros = [
    {id: 1,  nome: 'Resident Evil 4', ano: 2023 },
    {id: 2, nome: 'Spider Man 2', ano: 2023}
    
  ]
  
  # Itera sobre o array de registros e insere cada um na tabela 'jogo'
  registros.each do |registro|
    id = registro[:id]
    nome = registro[:nome]
    ano = registro[:ano]
    # Cria a instrução SQL de inserção
    consulta = "INSERT INTO jogo (id, nome, ano) VALUES (#{id}, '#{nome}', #{ano})"
  
    # Executa a instrução SQL de inserção
    conn.exec(consulta)
  end
  
  puts "Registros inseridos com sucesso!"
  
  # Fecha a conexão com o banco de dados
  conn.close