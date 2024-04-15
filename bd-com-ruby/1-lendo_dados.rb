require 'pg'

conn = PG.connect(
    dbname: 'fliperama',
    user: 'postgres',
    password: '123456',
    host: 'localhost',
    port: 5432
)
    

query = 'SELECT * FROM public.jogo'

begin 
    result = conn.exec(query)

    result.each do |linha|
        puts "ID: #{linha['id']} - Nome: #{linha['nome']} - Ano: #{linha['ano']}"
    end
ensure
    conn.close if conn
end