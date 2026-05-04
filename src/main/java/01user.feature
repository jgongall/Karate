Feature: Check returned users by API

  Background:
    * url 'https://gorest.co.in'
    * header Accept = 'application/json'

  Scenario: get list of all users
    Given path 'public/v2/users'
    When method GET
    Then status 200
    And def userResponse = response
		#Then match userResponse.data[*].email contains ['aaaaaaaaaaaa']

  Scenario: get list of all users - bad url
    Given path '/public-ap/us'
    When method GET
    Then status 404
	# param envio de parametro	

  Scenario: get user with id 5816856 by param
    Given path 'public/v2/users'
    And param id = '5816856'
    When method GET
    Then status 200

  Scenario: get list all the users having gender Male
    Given path 'public/v2/users'
    And param gender = 'male'
    When method GET
    Then status 200
    And def userResponse = response
		#Then match userResponse.data[*].gender contains ['Female']
