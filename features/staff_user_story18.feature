Feature: Delete picture
  As a staff
  So that I can delete don't use picture
  I want to select picture to delete don't use picture

Background: Startup with Homepage

  Given the following staff exist:
  | username     | password                           |
  | naidkub      | a128290498a21ed6a3fc8a2e4c011ebc   |

  And I am on the log in page
  When I login with "naidkub" and "honhon"
  Then I should be on the staff page
  When I follow "เปลี่ยนแปลงข่าวสาร"
  Then I should be on the pic list page
  When I follow "เพิ่มรูปข่าวสาร"
  Then I should be on the add new pic page
  When I attach the file "public/images/engr-slide-header-01.jpg" to "welcome[img]"
  And I press "เพิ่มรูป"
  Then I should be on the pic list page
  And I should see "engr-slide-header-01.jpg"
  And I should see "ไม่แสดงผล"

Scenario: Select picture to delete
  
  When I follow "ลบรูปภาพ"
  Then I should be on the pic list page
  And I should not see "engr-slide-header-01.jpg"

 



