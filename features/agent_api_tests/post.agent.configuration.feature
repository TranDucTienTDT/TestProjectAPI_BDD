Feature: Test API TestProject.io v2

 Scenario Outline: Test Post Agent's Configuration
    Given Login to TestProject
    When The POST request with uri "/v2/agents/config" with payload below is sent.
      """
      {
        "alias": "Linux Agent",
        "jobId": "ks2w6Lcs_06IS_R0kMw92Q",
        "jobParameters": {
          "browsers": [
            "Chrome",
            "Firefox"
          ],
          "projectParameters": {
            "Region": "us-east-2",
            "ParallelTasks": 8
          },
          "testParameters": [
            {
              "data": [
                {
                  "UserName": "TestProject_User",
                  "Email": "example@testproject.io",
                  "SecurityLevel": 5
                }
              ]
            }
          ]
        }
      }
      """
    Then The response status should be: 200
