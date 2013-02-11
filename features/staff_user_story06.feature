Feature: delete room data

  As an audiovisual education, faculty of Engineering, Thammasat university
  So that I can delete room data
  I want to delete room data


Scenario: can delete room data that want to delete

  Given the following rooms exist:
  | room_id      | status      |
  | engr303      | available   |
  | engr313      | unavailable |

  And I am on the room "engr303" status page
  Then I should see "Delete"
  When I press "Delete"
  Then I should see "Are you sure?"
  When I press "ok"
  Then I should be on staff page 
  And I should see "Room "engr303" was successfully deleted."





