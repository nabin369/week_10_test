Feature: User sign in count

	Scenario: Count user sign in
		Given I am registered user
		When I am on the new session path
		And I click sign in
		Then the page should have count 1

