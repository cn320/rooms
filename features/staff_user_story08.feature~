Feature: see detail of each user who reserve room 

  As an audiovisual education, faculty of Engineering, Thammasat university
  So that I see detail of each user who reserve room
  I want to see detail of each user who reserve room in database

Scenario: can see all detail of user who reserve room

  Given the following user exist:
  | name         | room_id  |
  | litu         | engr313  |

  And I am on the reserve detail page
  Then I should see "ดูรายละเอียดเพิ่มเติม"
  When I follow "ดูรายละเอียดเพิ่มเติม"
  Then I should be on the reserve detail user "litu" page
  And I should see "Details about litu"

