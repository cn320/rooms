Feature: see all detail of user who reserve room

  As an audiovisual education, faculty of Engineering, Thammasat university
  So that I see all detail of user who reserve room
  I want to see all detail of user who reserve room in database

Background: Startup with Homepage
  Given the following reserves exist:
  | name         | room_id  |
  | litu         | engr313  |
  | naidkub      | engr303  |

Scenario: can see all detail of user who reserve room
  
  Given I am on the staff page
  Then I should see "ดูรายละเอียดการจอง"
  When I follow "ดูรายละเอียดการจอง"
  Then I should be on the reserve detail page
  And I should see "litu" and "engr313" in reserve list
  And I should see "naidkub" and "engr303" in reserve list
  

