class Transacao
    attr_reader :para, :de , :quantia
    attr_accessor :completou
    
    def initialize(para, de, quantia, completou)
        @para = para
        @de = de
        @quantia = quantia
        @completou = completou
    end

    def to_s
        "#{@de} -  #{@para} - #{@completou}"
    end
end

transacao = Transacao.new("Isaac", "George", 100, true)
puts transacao