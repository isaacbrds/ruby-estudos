# Verificação e conversão de formato de data em uma string usando expressões regulares em Ruby.
def verificar_e_converter_data(string)
    if string =~ /\A(\d{2})\/(\d{2})\/(\d{4})\z/
      dia, mes, ano = string.scan(/\d+/)
      nova_data = "#{ano}-#{mes}-#{dia}"
      puts "A data no formato 'dd/mm/aaaa' é válida e convertida para o formato 'aaaa-mm-dd': #{nova_data}"
    else
      puts "A data inserida não está no formato correto 'dd/mm/aaaa'."
    end
  end
  
  # Solicita ao usuário uma data no formato "dd/mm/aaaa"
  puts "Insira uma data no formato 'dd/mm/aaaa': "
  data = gets.chomp
  
  # Chama a função para verificar e converter a data
  verificar_e_converter_data(data)