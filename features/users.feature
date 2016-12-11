Feature: User registration and login

  Scenario: I sign up
    Given I am on the "user registration" page
    When I fill in "Email" with "email@email.com"
    And I fill in "Password" with "password"
    And I fill in "Password confirmation" with "password"
    And I click "Sign up"
    Then there should be 1 user in the system
    And I should see "Welcome! You have signed up successfully."