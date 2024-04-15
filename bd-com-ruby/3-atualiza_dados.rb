require 'pg'

# Configurações de conexão com o banco de dados
conn = PG.connect(
    dbname: 'fliperama',
    user: 'postgres',
    password: '123456',
    host: 'localhost',
    port: 5432
  )

# ID do registro que você deseja atualizar
id_do_registro = 1  # Substitua pelo ID do registro que você deseja atualizar

# Novos valores que você deseja atribuir ao registro
novo_nome = 'Mortal Kombat 1'
novo_ano = 2023

# Crie a instrução SQL de atualização
update_query = "UPDATE jogo SET nome = '#{novo_nome}',
 ano = #{novo_ano} WHERE id = #{id_do_registro}"
# Executa a instrução SQL de atualização
conn.exec(update_query)

puts "Registro atualizado com sucesso!"

# Fecha a conexão com o banco de dados
conn.close