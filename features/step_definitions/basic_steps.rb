Given(/^I am on the "([^"]*)" page$/) do |page|
  case page
    when "events"
      visit events_path
    when "user registration"
      visit new_user_registration_path
  end
end

When(/^I fill in "([^"]*)" with "([^"]*)"$/) do |field, text|
  fill_in field, with: text
end

And(/^I click "([^"]*)"$/) do |link|
  click_link_or_button link
end

Then(/^I should see "([^"]*)"$/) do |content|
  expect(page).to have_content content
end

And(/^I should not see "([^"]*)"$/) do |content|
  expect(page).not_to have_content content
end

Then(/^show me the page$/) do
  save_and_open_page
end