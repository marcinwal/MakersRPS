Feature:
 This is a game for playing Rock, Paper and Scissors.
 With addtional options to extend the game for more options like lizard etc.
 After game definition player can play with computer or another player registered on the page.
 The winner is announced and his turn is uncovered.


  Scenario: Inputing the name
    Given I am on the home page
    When ther is no player yet
    Then I should see "What is your name?"

  Scenario: Ready for game
    Given I am on the home page
    When player gave his name
    Then I should see "Welcome to the game"

  Scenario: Playing with computer
   Given I am on the home page
   When there is only one player
   Then I should play against computer

  Scenario: Playing with computer and winning
   Given I am on the home page
   When I play against computer
   And player has paper
   When computer has a rock
   Then I should see "The winner is Computer"

  Scenario: Playing two players
    Given I am on the home page
    When there are two players
    Then I should not play against the computer

