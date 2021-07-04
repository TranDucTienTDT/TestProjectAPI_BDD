Feature: Test API TestProject.io v2

 Scenario Outline: Test Get A Specific Agent's Executions
    Given Login to TestProject
    When The GET request with uri "/v2/agents/<agentId>/executions" is sent.
    Then The response status should be: 200
   Examples:
     | agentId                | start | limit |
     | f22DDiUGfUaGeJbEWYVPFA | 1     | 10    |
