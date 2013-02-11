Feature: see room status

  As an audiovisual education, faculty of Engineering, Thammasat university
  So that I can see room status
  I want to see room status


Scenario: can see room status for each room in database

 Given the following rooms exist:
  | room_id      | status      | more info |
  | engr303      | available   | ดูสถานะห้อง engr303 |
  | engr313      | unavailable | ดูสถานะห้อง engr313 |

  And I am on the staff page
  Then I should see "ดูสถานะห้อง engr303"
  When I follow "ดูสถานะห้อง engr303"
  Then I should be on the room "engr303" status page

