Feature: Specify time to reserve room in case daily reserve

  As an audiovisual education, faculty of Engineering, Thammasat university
  So that I can reserve
  I want to fill data and specify time to reserve to database

Background: Startup with Homepage

  Given I am on the staff page
  And I should see "จองห้องว่าง"
  When I follow "จองห้องว่าง"
  Then I should be on the page

Scenario: Fill data and specify appropriate time to reserve room
  When I fill data into the form
  And I specify appropriate time to reserve
  And I press "จองห้อง"
  Then I should be on the staff page
  And I should see "การจองห้องสำเร็จ"

Scenario: Fill data and specify inappropriate time to reserve room
  When I fill data into the form
  And I specify inappropriate time to reserve
  And I press "จองห้อง"
  Then I should be on the page
  And I should see "ไม่สามารถจองห้องได้เนื่องจากช่วงเวลาไม่เหมาะสม"



