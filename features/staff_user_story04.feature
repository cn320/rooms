Feature: Modify room data

  As an audiovisual education, faculty of Engineering, Thammasat university
  So that I can modify room data
  I want to modify room data in database

Scenario: Modify room data in database 

  Given the following rooms exist:
  | room_id      | status      |
  | engr303      | available   |
  | engr313      | unavailable |

  And I am on the staff page
  Then I should see "ดูสถานะห้อง engr303"
  When I follow "ดูสถานะห้อง engr303"
  Then I should be on the "engr303" status page for staff
  And I should see "แก้ไขข้อมูลห้อง"
  When I follow "แก้ไขข้อมูลห้อง"
  Then I should be on the edit room "engr303" page
  When I fill in "Room_id" with "engr304"
  And I press "ยืนยันการแก้ไขข้อมูลห้อง"
  Then I should be on the "engr304" status page for staff


  
