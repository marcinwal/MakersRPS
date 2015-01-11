Given(/^I am on the home page$/) do
  visit '/'
end

When(/^ther is no player yet$/) do
  @player == nil
end

Then(/^I should see "(.*?)"$/) do |arg1|
  page.has_content? arg1
end

