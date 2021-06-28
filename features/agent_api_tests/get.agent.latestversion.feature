Feature: Test API TestProject.io v2

  Scenario: Test Get Latest Agents Version
    Given Login to TestProject
    When The GET request with uri "/v2/agents/latest-version?osType=Windows" is sent.
    Then The response status should be: 200