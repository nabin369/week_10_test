When(/^I click "(.*?)"$/) do |button|
  click_link button
end

Then(/^I should see the sign up page$/) do
  expect(page).to have_content("Sign Up")
  expect(page).to have_content("Username")
  expect(page).to have_content("Password")
end

# Given(/^I am a registered user$/) do
# visit new_user_path
#   fill_in 'user[username]', with: 'test'
#   fill_in 'user[password_digest]', with: 'test'
#   click_button "Sign Up"
# end

# Then(/^I should see the sign in page$/) do
#   expect(page).to have_content('Sign In')
#   expect(page).to have_content("Username")
#   expect(page).to have_content("Password")
# end