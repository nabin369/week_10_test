Feature: User Session

	Scenario: Signing in
		Given I am a registered user
		And I am on the homepage
		When I click "Sign In"
		Then I should see the sign in page

	Scenario: Unsuccessful Sign in
		Given I am on the sign in page
		When I fill up with incorrect data
		Then I should receive an error
		And I should be on the sign in page

	Scenario: Successful sign in
		Given I am on the sign in page
		When I fill up with correct data
		Then I should receive welcome message
		And I should be on the home page
