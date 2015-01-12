Given(/^I am on the home page$/) do
  visit '/'
end

When(/^ther is no player yet$/) do
  @player == nil
end

Then(/^I should see "(.*?)"$/) do |arg1|
  page.has_content? arg1
end

When(/^player gave his name$/) do
  @player != nil
end

When(/^there is only one player$/) do
  @number_of_players == 1
end

Then(/^I should play against computer$/) do
  @opponent == "computer"
end

When(/^I play against computer$/) do
  @opponent == "computer"
end

When(/^player has paper$/) do
  @player_move == :paper
end

When(/^computer has a rock$/) do
  @opponent_move == :rock
end

When(/^there are two players$/) do
  @number_of_players == 2
end

Then(/^I should not play against the computer$/) do
  @opponent != "computer"
end




