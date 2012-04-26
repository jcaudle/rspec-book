Feature: code-breaker submits guess

  The code-breaker submits a guess of four numbers. The game marks the game
  with + and - signs.

  For each number in the guess that matches the number and position of a number 
  in the secret code, the mark includes one + sign. For each number in the guess
  that matches the number but not the position of a number in the secret code,
  the mark includes one - sign.

  Scenario: all exact matches
    Given the secret code is "1234"
    When I guess "1234"
    Then the mark should be "++++"
