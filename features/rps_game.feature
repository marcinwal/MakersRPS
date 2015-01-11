Feature:
 This is a game for playing Rock, Paper and Scissors.
 With addtional options to extend the game for more options like lizard etc.
 After game definition player can play with computer or another player registered on the page.
 The winner is announced and his turn is uncovered.


Scenario:
  Given I am on the home page
  When ther is no player yet
  Then I should see "What is your name?"

Scenario:
  Given I am on the home page
  When player gave his name
  Then I should see "Welcome to the game"