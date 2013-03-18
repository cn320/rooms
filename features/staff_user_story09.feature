Feature: See all room list
  As a Staff’s
  So that I can making an online reservation
  I want to filling reservation data and sending requests

Background: Startup with Homepage

  Given the following detail_rooms exist:
  | roomname     | amount    | 
  | ENGR303      | 30        |
  | ENGR304      | 30        | 

  Given the following staff exist:
  | username     | password |
  | naidkub      | honhon   |

  And I am on the log in page
  When I login with "naidkub" and "honhon"
  Then I should be on the staff page

Scenario: See list of all room
  When I follow "Room list"
  Then I should be on the room list page
  And I should see "ENGR303"
  And I should see "ENGR304"
 

