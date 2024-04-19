puts Time.new
puts Time.now

puts Time.new(2023)
puts Time.new(2023, 5)
puts Time.new(2023, 5, 12)
puts Time.new(2023, 5, 12, 18)
puts Time.new(2023, 5, 12, 18, 43)
puts Time.new(2023, 5, 12, 18, 43, 51)
puts


alguma_hora = Time.new(2023, 5, 12, 18, 43, 51)

puts alguma_hora.year
puts alguma_hora.month
puts alguma_hora.day
puts alguma_hora.hour
puts alguma_hora.min
puts alguma_hora.sec
puts alguma_hora.mday
puts alguma_hora.yday
puts alguma_hora.wday
puts alguma_hora.monday?
puts alguma_hora.friday?

inicio_do_ano = Time.new(2024, 1, 1)
puts inicio_do_ano

#60 segundos em um minuto
#60 minutos em uma hora
#24 horas em um dia
#30 dias

puts inicio_do_ano + (60 * 60 * 24 * 30) # Resulta em 30 dias

puts inicio_do_ano + (60 * 60 * 24 * 45) # Resulta em 45 dias