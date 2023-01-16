Feature: Delete user on restapiexample

  @delete
  Scenario: Delete a user
    Given url "https://dummy.restapiexample.com/api/v1/delete/6"
    When method delete
    Then status 200