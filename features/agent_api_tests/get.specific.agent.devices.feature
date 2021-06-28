Feature: Test API TestProject.io v2

 Scenario Outline: Test Get A Specific Agent's Devices
    Given Login to TestProject
    When The GET request with uri "/v2/agents/<agentId>/devices" is sent.
    Then The response status should be: 200
   Examples:
     | agentId                |
     | FpLPlBaEJkyZSEcaclyjOQ |