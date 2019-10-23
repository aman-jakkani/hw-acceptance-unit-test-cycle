Feature: make sure edit works
 
  As a concerned student
  So that I can achieve >75% test coverage
  I want to make sure edit works
  
Background: movies already exist in the database

  Given the following movies exist:
  | title                   | rating | release_date |
  | Aladdin                 | G      | 25-Nov-1992  |
  | The Terminator          | R      | 26-Oct-1984  |
  | When Harry Met Sally    | R      | 21-Jul-1989  |
  | The Help                | PG-13  | 10-Aug-2011  |
  | Chocolat                | PG-13  | 5-Jan-2001   |
  | Amelie                  | R      | 25-Apr-2001  |
  | 2001: A Space Odyssey   | G      | 6-Apr-1968   |
  | The Incredibles         | PG     | 5-Nov-2004   |
  | Raiders of the Lost Ark | PG     | 12-Jun-1981  |
  | Chicken Run             | G      | 21-Jun-2000  |
  
Scenario: edit an existing movie
  When I go to the edit page for "Chicken Run"
  And  I fill in "Director" with "Nick Park"
  And  I press "Update Movie Info"
  Then the director of "Chicken Run" should be "Nick Park"