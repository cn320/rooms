Feature: delete reserve data

  As an audiovisual education, faculty of Engineering, Thammasat university
  So that I can delete room data
  I want to delete room data

Background: Startup with Homepage
  Given the following reserves exist:
  | name         | room_id  |
  | litu         | engr313  |
  | naidkub      | engr303  |
Scenario: can delete room data that want to delete

  Given I am on the reserve detail for "engr313" page
  Then I should see "Delete"
  When I follow "Delete"
  Then I should be on the reserve detail page
  And I should see "Reserve was successfully deleted."





