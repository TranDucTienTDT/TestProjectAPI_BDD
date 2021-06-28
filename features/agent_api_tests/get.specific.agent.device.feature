Feature: Test API TestProject.io v2

 Scenario Outline: Test Get A Specific Agent's Device
    Given Login to TestProject
    When The GET request with uri "/v2/agents/<agentId>/devices/<deviceUdid>" is sent.
    Then The response status should be: 200
   Examples:
     | agentId                | deviceUdid                           |
     | FpLPlBaEJkyZSEcaclyjOQ | 95051282-2817-4263-BC8E-7D7A024033FA |