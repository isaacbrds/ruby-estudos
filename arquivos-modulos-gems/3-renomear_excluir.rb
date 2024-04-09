File.rename("dados/cursos.txt", "dados/meus_cursos.txt") if File.exist?("dados/cursos.txt")

# Excluindo arquivos
File.delete("dados/abc.txt") if File.exist?("dados/abc.txt")
    