Given(/^I am a registered user$/) do
	visit new_user_path
  fill_in 'user[username]', with: 'test'
  fill_in 'user[password]', with: 'testingtest'
  fill_in 'user[password_confirmation]', with: 'testingtest'
  click_button "Create Account"
end

When(/^I click "Sign In"$/) do
  click_link "Sign In"
end

Then(/^I should see the sign in page$/) do
  expect(page).to have_content('Sign In')
  expect(page).to have_content("Username")
  expect(page).to have_content("Password")
end

Given(/^I am on the sign in page$/) do
  visit new_session_path
end

When(/^I fill up with incorrect data$/) do
  fill_in 'session[username]', with: 'test'
  fill_in 'session[password]', with: 'testingtest'
  click_button "Sign In"
end

Then(/^I should receive an error$/) do
  expect(page).to have_content('Invalid user name/ password')
end

Then(/^I should be on the sign in page$/) do
	visit new_session_path
end

When(/^I fill up with correct data$/) do
  visit new_session_path
  fill_in 'session[username]', with: 'test'
  fill_in 'session[password]', with: 'testingtest'
  click_button "Sign In"
end

Then(/^I should receive welcome message$/) do
  expect(page).to have_content('Welcome test')
end

Then(/^I should be on the home page$/) do
  visit root_path
end

