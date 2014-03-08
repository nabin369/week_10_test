Feature: User



Scenario: Visit homepage
Given I am on the homepage
Then I should see description of the apps

Scenario: Signing up
Given I am on the homepage
When I click "Sign Up"
Then I should see the sign up page

Scenario: Signing in
Given I am a registered user
And I am on the homepage
When I click "Sign In"
Then I should see the sign in page
