Feature: Get user on restapiexample

  Background:
    * url "https://dummy.restapiexample.com/api/v1"
    * def listUser = "/employees"
    * def aUser = "/employee/"

    @listUsers
  Scenario: Get a users
    Given path listUser
    When method get
    Then status 200
  @oneUser
  Scenario: Get a user
    Given path 	/employee/10
    When method get
    Then status 200
