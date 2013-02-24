Feature: Modify room data

  As an audiovisual education, faculty of Engineering, Thammasat university
  So that I can modify room data
  I want to modify room data in database

Scenario: Modify room data in database 

  Given the following rooms exist:
  | room_id      | status      |  volume  |
  | engr303      | available   |  30      |
  | engr304      | available   |  30      |
  | engr305      | unavailable |  30      |
  | engr313      | unavailable |  50      |

  And I am on the staff page
  Then I should see "ดูสถานะห้อง engr303"
  When I follow "ดูสถานะห้อง engr303"
  Then I should be on the room "engr303" status page for staff
  And I should see "แก้ไขข้อมูลห้อง"
  When I follow "แก้ไขข้อมูลห้อง"
  Then I should be on the edit room "engr303" page
  When I fill in "Room_id" with "engr304"
  And I press "ยืนยันการแก้ไขข้อมูลห้อง"
  Then I should be on the room "engr304" status page for staff


  
