Feature: User registration and login

  Background:
    Given there is a user "random@email.com"

  Scenario: I sign up
    Given I am on the "user registration" page
    When I fill in "Email" with "email@email.com"
    And I fill in "Password" with "password"
    And I fill in "Password confirmation" with "password"
    And I click "Sign up"
    Then there should be 2 users in the system
    And I should see "Welcome! You have signed up successfully."

  Scenario: I log in
    Given I am on the "login" page
    When I fill in "Email" with "random@email.com"
    And I fill in "Password" with "password"
    And I click "Log in"
    Then I should see "Signed in successfully."