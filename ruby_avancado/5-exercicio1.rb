require 'date'

def data_entrega(data_envio, tempo_entrega)
    data_de_entrega = data_envio
    #tempo_entrega += 1
    while(tempo_entrega.positive?)
        
        unless data_envio.sunday? or data_envio.saturday? 
            data_de_entrega = data_envio
            tempo_entrega -= 1
        end
        puts data_envio += 1
    end
    data_de_entrega
end

puts "a data da entrega é: #{data_entrega( Date.new(2024,4,19), 2 )}"