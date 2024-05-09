@backend2
Feature: Backend2
    Realiza testes backand vaga qa backend2.

    @backend2AllScenario
    Scenario1: backend2AllScenario
        Given a string de entrada "<string_input>"
        And os marcadores "<marcadores_input>"
        Then a saída esperada é "<saida_output>"

        Examples:
        |string_input                                       |marcadores_input       |saida_output                   |
        |"bananas, tomates # e ventiladores"                |"[“#”, “!”]"           |bananas, tomates               |
        |"o rato roeu a roupa $ do rei % de roma"           |"[“%”, “!”]"           |o rato roeu a roupa $ do rei   |
        |"the quick brown fox & jumped over * the lazy dog" |"[“&”, “*”, “%”, “!”]" |the quick brown fox            |