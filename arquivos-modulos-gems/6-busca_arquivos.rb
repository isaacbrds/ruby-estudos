def buscar(chave)
    resultado = {}
    Dir.glob("dados/*.txt") do |file|
        f = File.open(file)
        f.each_with_index do |linha, indice|
            if linha.include? chave 
                resultado[indice + 1] = file
            end
        end
        f.close
    end
    resultado
end

resultado = buscar('Mario')

if resultado.length.positive?
    for chave, valor in resultado
        puts "Arquivo: #{valor} Linha: #{chave}"
    end
else
    puts "Não encontrado"
end

