Given(/^I am registered user$/) do
  visit new_user_path
  fill_in 'user[username]', with: 'apple'
  fill_in 'user[password]', with: 'testingtest'
  fill_in 'user[password_confirmation]', with: 'testingtest'
  click_button "Create Account"
end

When(/^I am on the new session path$/) do
  visit new_session_path
end

When(/^I click sign in$/) do
  fill_in 'session[username]', with: 'apple'
  fill_in 'session[password]', with: 'testingtest'
  click_button "Sign In"
end

Then(/^the page should have count (\d+)$/) do |arg1|
  expect(page).to have_content('Count 1')
end