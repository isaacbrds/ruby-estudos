# Reference

# %b - Nome do mês abreviado ("Jan")
# %B - Nome do mês completo ("January")
# %d - Dia do mês (1..31)
# %j - Dia do ano (1..366); so-called "Julian date"
# %m - Mês como número (1..12)
# %w - Dia da semana como número (0..6)
# %x - Data preferida de representação (no time)
# %y - Ano em dois digitos (no century)
# %Y - Ano em quatro digitos

algum_dia = Time.new(2025, 3, 31)

puts algum_dia.to_s
# strftime = converte objeto tempo para string
puts algum_dia.strftime("%Y-%m-%d")
puts algum_dia.strftime("%Y/%m/%d")
puts algum_dia.strftime("%m/%d/%Y")
puts algum_dia.strftime("%Y %m %d")
puts algum_dia.strftime("%B %d, %Y")
puts algum_dia.strftime("%x %d, %Y")