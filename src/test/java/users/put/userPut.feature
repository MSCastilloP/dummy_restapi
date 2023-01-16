Feature: Put user on restapiexample

  @Putuser
  Scenario: Put a user
    Given url "https://dummy.restapiexample.com/api/v1/update/123"
    And request {"name":"manuel","salary":"123","age":"23"}
    When method put
    Then status 200
    And match $.data.name == "manuel"