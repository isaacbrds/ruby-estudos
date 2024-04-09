# Blocks
def hello
    yield
end

hello { puts "olá mundo"}

# Lambda

potencia = lambda {|num| num ** 2}
puts potencia.call(4)