module CommentsHelper
    def diferenca(comentario_atualizado, comentario_criado)
        if (comentario_atualizado - comentario_criado).positive? 
            true
        else
            false
        end 
    end
end
