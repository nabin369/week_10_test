When(/^I click "Sign Up"$/) do
  click_link "Sign Up"
end

Then(/^I should see the sign up page$/) do
  expect(page).to have_content("Sign Up")
  expect(page).to have_content("Username")
  expect(page).to have_content("Password")
end

