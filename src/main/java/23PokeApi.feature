Feature: Check returned pokemon by API

  Background:
    * url 'https://pokeapi.co/api/v2'
    * header Accept = 'application/json'

  Scenario: get a status result 404 of all pokemons
    Given path '/pokemon/dittos'
    When method GET
    Then status 404

  Scenario: get a status result 200 and one pokemon
    Given path '/pokemon/ditto'
    When method GET
    Then status 200
