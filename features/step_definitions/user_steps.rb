Then(/^there should be (\d+) user in the system$/) do |count|
  expect(User.count).to eq count.to_i
end