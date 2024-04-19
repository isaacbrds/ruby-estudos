frase = "O ruby é massa!"

p frase.include?("Ruby")
p frase.include?("ruby")
p frase.end_with?("massa")
p frase.end_with?("massa!")

puts

# \d: Corresponde a qualquer dígito de 0 a 9.
# \D: Corresponde a qualquer caractere que não seja um dígito.
# \w: Corresponde a qualquer caractere alfanumérico (letras, dígitos e sublinhados).
# \W: Corresponde a qualquer caractere que não seja alfanumérico.
# \s: Corresponde a qualquer caractere de espaço em branco, como espaço, tabulação, nova linha, entre outros.
# \S: Corresponde a qualquer caractere que não seja espaço em branco.
# \b: Corresponde a uma fronteira de palavra.
# \B: Corresponde a qualquer posição que não seja uma fronteira de palavra.
# \A: Corresponde ao início da string.
# \Z: Corresponde ao final da string, ou ao final da linha se a opção multiline estiver habilitada.

# Utilizando Regexp
p /T/.class
# 1º ocorrência da letra R
p frase =~ /R/

# 1º ocorrência da letra a
p frase =~ /a/

# 1º ocorrência do caractere !
p frase =~ /!/

# 1º ocorrência da letra gua
p frase =~ /gua/

string = "Olá, world!"
padrao = /mundo/
if string =~ padrao
  puts "A string contém 'mundo'."
else
  puts "A string não contém 'mundo'."
end