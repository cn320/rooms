Feature: Adding new room

  As an audiovisual education, faculty of Engineering, Thammasat university
  So that I can add new room
  I want to add new room in my database

Background: Startup with Staffpage

  Given the following rooms exist:
  | room_id      | status      |
  | engr303      | available   |
  | engr313      | unavailable |

  And I am on the staff page
  And I should see "เพิ่มห้องใหม่"
  When I follow "เพิ่มห้องใหม่"
  Then I should be on the new room page
  
Scenario: Add new room data that doesn’t exists in database to database
  When I fill in "Room_id" with "engr707"
  And I fill in "Status" with "available"
  And I press "เพิ่มห้องใหม่"
  Then I should be on the room "engr707" status page
  And I should see "Room was successfully created."

Scenario: Add room data that exists in database to database
  When I fill in "Room_id" with "engr303"
  And I fill in "Status" with "available"
  And I press "เพิ่มห้องใหม่"
  Then I should be on the staff page
  And I should see "can not add new room"


