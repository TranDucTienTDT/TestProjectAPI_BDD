Feature: Test API TestProject.io v2

  Scenario: Test Get All Agents
    Given Login to TestProject
    When The GET request with uri "/v2/agents" is sent.
    Then The response status should be: 200

  Scenario Outline: Test Get All Agents with query
    Given Login to TestProject
    When The GET request with uri "/v2/agents?_start=<start>&_limit=<limit>" is sent.
    Then The response status should be: 200
    Examples:
      | start | limit |
      | 0     | 10    |

  Scenario Outline: Test Get All Agents with query new format
    Given Login to TestProject
      And The uri is: "/v2/agents"
      And The query is: "?_start=<start>&_limit=<limit>"
    When The "GET" request is sent.
    Then The response status should be: 200
    Examples:
      | start | limit |
      | 0     | 10    |