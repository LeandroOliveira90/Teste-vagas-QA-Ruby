require 'function.rb'

#backend2AllScenario
# Definindo string de entrada
Given("a string de entrada {string}") do |entrada|
  @entrada = entrada
end

# Definindo marcadores e separando arrays com uso de split
Given("os marcadores {string}") do |marcadores|
  @marcadores = marcadores.split(", ")
end

# Resultado da função e verificação de resultado esperado
Then("a saída esperada é {string}") do |saida|
  resultado = removeTextoSimbolos(@entrada, @marcadores)
  expect(resultado).to eq(saida)
end

# OBS: Os demais casos não estão teoricamente escritos, pois, com a refatoração existente
# no arquivo backend2.feature os 3 cenários já serão validados. Refatoração para deixar o
# código mais limpo.
