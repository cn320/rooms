Feature: Modify room data
  As an audiovisual education, faculty of Engineering, Thammasat university
  So that I can modify room data
  I want to modify room data in database

Scenario: Modify room data in database
  Given I am on the staff page
  Then I should see "แก้ไขข้อมูลห้อง"
  When I follow "แก้ไขข้อมูลห้อง"
  And I modify data
  And I press "ตกลง"
  Then I should be on the staff page
  And I should see "การแก้ไขสำเร็จ"
