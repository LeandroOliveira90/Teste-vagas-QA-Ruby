require 'httparty'
require 'json'

#backend1Scenario1
  # Efetuando requisição com método get no endpoint.
  Given('que eu tenha acesso ao endpoint de consulta') do
    @response = HTTParty.get('https://portal.vr.com.br/api-web/comum/enumerations/VRPAT')
  end

  # Extraindo e convertendo informação do JSON para um objeto Ruby e verificando existencia da chave.
  When('validar que o "JSON" retornado pelo serviço possui a chave “typeOfEstablishment”') do
    resp = JSON.parse(@response.body)
    expect(resp).to have_key('typeOfEstablishment')
  end

  # Extraindo e convertendo informação do JSON para um objeto Ruby
  # Atribuindo a chave obtida como resposta
  # selecionando elemento aleatório dentro da resposta e efetuando print aleatório de estabelecimento.
  Then('deve tirar "print", aleatoriamente, de um dos estabelecimentos') do
    resp = JSON.parse(@response.body)
    type_establishment = resp["typeOfEstablishment"]
    random_establishment = type_establishment.sample
    puts "Estabelecimento: #{random_establishment}"
  end
