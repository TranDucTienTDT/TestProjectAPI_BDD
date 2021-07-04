Feature: Test API TestProject.io v2

  Scenario Outline: Test Post A New Project's Application
    Given Login to TestProject
    When The POST request with uri "/v2/projects/<projectId>/applications" is sent.
      """
      {
        "name": "<appName>",
        "description": "<appDescription>",
        "platform": "<appPlatform>",
        "androidActivity": "<androidActivity>",
        "androidPackage": "<androidPackage>"
      }
      """
    Then The response status should be: 200
    Examples:
      | projectId | appName | appDescription | appPlatform | androidActivity | androidPackage |
