Feature: Adding new room

  As an audiovisual education, faculty of Engineering, Thammasat university
  So that I can add new room
  I want to add new room in my database

Background: Startup with Staffpage

  Given I am on the staff page
  And I should see "เพิ่มห้องใหม่"
  When I follow "เพิ่มห้องใหม่"
  Then I should be on the new room page
  
Scenario: Add new room data that doesn’t exists in database to database
  When I fill data into the form
  And I press "เพิ่มห้องใหม่"
  Then I should be on the staff page
  And I should see "การเพิ่มห้องสำเร็จ"

Scenario: Add room data that exists in database to database
  When I fill data into the form
  And I press "เพิ่มห้องใหม่"
  Then I should be on the new room page
  And I should see "ชื่อห้องนี้มีในDatabaseแล้ว"


