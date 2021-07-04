Feature: Test API TestProject.io v2

  Scenario Outline: Test Get All Project's Applications
    Given Login to TestProject
    When The GET request with uri "/v2/projects/<projectId>/applications" is sent.
    Then The response status should be: 200
    Examples:
      | projectId |