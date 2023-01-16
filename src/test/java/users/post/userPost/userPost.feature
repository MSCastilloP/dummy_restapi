Feature: Post user on restapiexample

  Background:
    * url "https://dummy.restapiexample.com/api/v1/create"
    * request {"name":"#(name)","salary":"#(salary)","age":"#(age)"}

  @putUsertOutline
  Scenario Outline: Post a user

    When method post
    Then status 200
    Examples:
      | name                | salary  | age |
      | Manuel              | 100000 | 95  |