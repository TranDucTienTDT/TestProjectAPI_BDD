Feature: Test API TestProject.io v2

  Scenario: Get all user accounts
    Given Table of Users:
      | firstName | lastName | email                     | registered           | confirmed | active | access                        |
      | Leo       | Tran     | ductien.tran@jobhopin.com | 2020-11-03T13:18:02Z | true      | true   | {"owner": true,"admin": true} |
    #Then First name should be: "Leo"
      And Login to TestProject
      And The uri is: "/v2/users"
    When The "GET" request is sent.
    Then The user info should be matched.