Feature: Test API TestProject.io v2

 Scenario Outline: Test Get A Specific Agent's Browsers
    Given Login to TestProject
    When The GET request with uri "/v2/agents/<agentId>/browsers" is sent.
    Then The response status should be: 200
   Examples:
     | agentId                |
     | FpLPlBaEJkyZSEcaclyjOQ |