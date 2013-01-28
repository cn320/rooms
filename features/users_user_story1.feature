Feature: Searching for room status and free time
  As a user’s
  So that I can see every room status
  I want to see room details and free time from database
Scenario: Attempting to specify reservation time
  Given I am on the home page
  Then I should see "ดูสถานะห้อง"
  When I follow "ดูสถานะห้อง"
  Then I should be on the room status page
  And I should see room status
