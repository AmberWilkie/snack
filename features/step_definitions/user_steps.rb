Then(/^there should be (\d+) (?:user||users) in the system$/) do |count|
  expect(User.count).to eq count.to_i
end

Given(/^there is a user "([^"]*)"$/) do |email|
  user = FactoryGirl.create(:user, email: email)
end

Given(/^I am logged in as "([^"]*)"$/) do |email|
  user = User.find_by(email: email)
  login_as(user)
end