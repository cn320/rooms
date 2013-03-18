Feature: Adding new room

  As an audiovisual education, faculty of Engineering, Thammasat university
  So that I can add new room
  I want to add new room in my database

Background: Startup with Staffpage

  Given the following staff exist:
  | username     | password |
  | naidkub      | honhon   |

  Given the following detail_rooms exist:
  | roomname     | amount     | 
  | ENGR303      | 30         | 

  And I am on the log in page
  When I login with "naidkub" and "honhon"
  Then I should be on the staff page
  When I follow "เพิ่มห้องใหม่"
  Then I should be on the new room page

Scenario: Add new room data that doesn’t exists in database to database
  When I fill in "Roomname" with "ENGR301"
  And I press "เพิ่มห้องใหม่"
  Then I should be on the staff page
  And I should see "add new room successess"

Scenario: Add room data that exists in database to database
  When I fill in "Roomname" with "ENGR303"
  And I press "เพิ่มห้องใหม่"
  Then I should be on the staff page
  And I should see "can not add new room"


