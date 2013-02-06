Feature: Requesting for online reservation
  As a user’s
  So that I can making an online reservation
  I want to filling reservation data and sending requests

Background: Startup with Homepage
  Given I am on the home page
  Then I should see "จองห้อง"
  When I follow "จองห้อง"
  Then I should be on the reserve page

Scenario: Attempting to find available reservation time
  When I fill reservation data and available reservation time
  And I press "จองห้อง"
  Then I should be on the home page
  And I should see "การจองห้องสำเร็จ"

Scenario: Attempting to find unavailable reservation time
  When I fill reservation data and unavailable reservation time
  And I press "จองห้อง"
  Then I should be on the home page
  And I should see “ไม่สามารถจองห้องได้ เพราะช่วงเวลาไม่เหมาะสม”
