Feature: Testando API do MangaDex

Background: Executa uma vez antes de cada teste
    * def url_base = "https://api.mangadex.org"
    * def request_json = read("json_teste.json")
    * def request_json2 = read("json_teste2.json")

Scenario: Pegando a lista com todos os mangás
    Given url url_base
    And path '/manga'
    When method get
    Then status 200
    And match $ contains {data: '#[]'}

Scenario: Procurando por um mangá aleatório na base de dados da API
    Given url url_base
    And path '/manga/random'
    When method get
    Then status 200

Scenario: Procurando por One Piece na API
    Given url url_base
    And path '/manga/a1c7c817-4e59-43b7-9365-09675a149a6f'
    When method get
    Then status 200
    And match response.data contains  {id: 'a1c7c817-4e59-43b7-9365-09675a149a6f'}

Scenario: Procurando um mangá inexistente na API (Caso Negativo)
        Given url url_base
        And path '/manga/j'
        When method get
        Then status 404

Scenario: Procurando as scans BR na API
        Given url url_base
        And path 'group?focusedLanguage=pt-br'
        When method get
        Then status 200

Scenario: Procurando a scan do Inatel na API (Caso Negativo)
    Given url url_base
    And path 'group?name=Inatel'
    When method get
    Then status 200
    And response.data == [0]