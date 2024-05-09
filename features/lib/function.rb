# Função para remover texto após qualquer símbolo no array
# Recebe dois argumentos, altera cada símbolo para encontrar um dos que será fornecido
# Altera o texto baseado no que foi encontrado por uma string vazia.
def removeTextoSimbolos(texto, marcadores)
  marcadores_regex = Regexp.union(marcadores.map { |symbol| Regexp.escape(symbol) })
  texto.gsub(/#{marcadores_regex}.+/, '')
end
