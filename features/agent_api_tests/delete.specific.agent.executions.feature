Feature: Test API TestProject.io v2

 Scenario Outline: Test Delete A Specific Agent's Frameworks
    Given Login to TestProject
    When The DELETE request with uri "/v2/agents/<agentId>/executions" is sent.
    Then The response status should be: 200
   Examples:
     | agentId                | start | limit |
     | f22DDiUGfUaGeJbEWYVPFA | 1     | 10    |
