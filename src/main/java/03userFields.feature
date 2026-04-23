Feature: Check returned users by API

  Background:
    * url 'https://gorest.co.in/public/v2'
    * header Accept = 'application/json'
    * def userSchema =
      """
      {
        "id": "#number",
        "name": "#string",
        "email": "#regex ^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\\.[a-zA-Z]{2,}$",
        "gender": "#notnull",
        "status": "#string"
      }
      """

  Scenario: get list of all users
    Given path '/users'
    When method GET
    Then status 200
    And print response
  # param envio de parametro	

  Scenario: get user with id 8446877 by param
    Given path '/users'
    And param id = '8446877'
    When method GET
    Then status 200
    And print response
    And match $[0] contains userSchema
		# #null // #notnull // #boolean // #number // #object // #array // #string // #regex // #uuid
