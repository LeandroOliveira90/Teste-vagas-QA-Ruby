@backend1
Feature: Backend1
    Realiza testes backand vaga qa backend1.

    @backend1Scenario1
    Scenario Outline: backend1Scenario1
        Given que eu tenha acesso ao endpoint de consulta
        When validar que o "JSON" retornado pelo serviço possui a chave “typeOfEstablishment”
        Then deve tirar "print", aleatoriamente, de um dos estabelecimentos
