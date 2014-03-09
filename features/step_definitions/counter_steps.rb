Given(/^I am on the homepage$/) do
  visit root_path
end

Then(/^I should see description of the apps$/) do
  expect(page).to have_content('Logged into')
end