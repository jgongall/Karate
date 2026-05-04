@name=CRUD
Feature: product endpoint

  Background:
    * url 'http://localhost:8082'

  Scenario: CRUD users
    Given path '/usuarios'
    And request {nombre:"Galletas", edad:23}
    When method POST
    Then status 200
    And match response == {id:'#number', nombre:"Galletas", edad:"#number"}
    * def identificador = response.id
# get by id
    Given path '/usuarios', identificador
    When method GET
    Then status 200
    And match response contains {id: '#(identificador)', nombre: "#string"}
# update
    Given path '/usuarios', identificador
    And request {id: '#(identificador)', nombre:"Leche", edad:0}
    When method PUT
    Then status 200
    And match response contains {id: '#(identificador)', nombre: "Leche"}
# list
    Given path '/usuarios'
    When method GET
    Then status 200
    And print "---- LISTA DE USUARIOS ----"
    And print response
# delete with id
    Given path '/usuarios', identificador
    When method DELETE
    Then status 200
# delete with body
    Given path '/usuarios'
    And request {id: '#(identificador)', nombre:"Leche", edad:0}
    When method DELETE
    Then status 500
# list
    Given path '/usuarios'
    When method GET
    Then status 200
    And print "---- LISTA DE USUARIOS ----"
    And print response
