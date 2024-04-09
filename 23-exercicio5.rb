puts "digite uma palavra"
palavra = gets.chomp
contaPalavras = {}

palavra.split("").each do |caracter|
    if contaPalavras.key? caracter
        contaPalavras[caracter] += 1
    else
        contaPalavras.store(caracter, 1)
    end
end
puts contaPalavras