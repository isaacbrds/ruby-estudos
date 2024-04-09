for i in 1..3
    puts i 
end

#alternativa

(1..3).each do|i| 
    puts i
end

(1..3).each do|i| 
    next if i == 2
    puts i
end

(1..3).each do|i| 
    break if i == 2
    puts i
end