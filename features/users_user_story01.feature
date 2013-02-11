Feature: Searching for room status and free time
  As a user’s
  So that I can see every room status
  I want to see room details and free time from database

Scenario: Attempting to specify reservation time
  Given the following rooms exist:
  | room_id      | status      |
  | engr303      | available   |
  | engr313      | unavailable |
  And I am on the home page
  Then I should see "ดูสถานะห้อง engr303"
  When I follow "ดูสถานะห้อง engr303"
  Then I should be on the room "engr303" status page
  And I should see room status
