Feature: see all detail of user who reserve room

  As an audiovisual education, faculty of Engineering, Thammasat university
  So that I see all detail of user who reserve room
  I want to see all detail of user who reserve room in database

Scenario: can see all detail of user who reserve room

  Given the following user exist:
  | name         | room_id  | more info  |
  | litu         | engr313  | ดูรายละเอียดเพิ่มเติม |

  And I am on the staff page
  Then I should see "ดูรายละเอียดการจอง"
  When I follow "ดูรายละเอียดการจอง"
  Then I should be on the reserve detail page
  And I should see "litu" and "engr313"

