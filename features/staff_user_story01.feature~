Feature: Log In to the staff page

  As an audiovisual education, faculty of Engineering, Thammasat university
  So that I can log in to the staff page
  I want to log in to the staff page with username and password

Background: Startup with Homepage

  Given the following staff exist:
  | username     | password |
  | naidkub      | honhon   |
  | koonnongchay | milkwarm |

  And I am on the home page
  Then I should see "สำหรับเจ้าหน้าที่"
  When I follow "สำหรับเจ้าหน้าที่"
  Then I should be on the log in page
  And I should see "กรุณากรอก username และ password สำหรับผู้ดูแลระบบ"
  
Scenario: Can Log In to the staff page (Happy Path)
   When I fill in "Username" with "naidkub"
   And I fill in "Password" with "honhon"
   And I press "Log In"
   Then I should be on the staff page
   And I should see "login successfully"
   Given I am on the home page
   And I follow "สำหรับเจ้าหน้าที่"
   Then I should be on the staff page

Scenario: Can not Log In to the staff page (Sad Path)
   When I fill in "Username" with "username"
   And I fill in "Password" with "password"
   And I press "Log In"
   Then I should be on the log in page
   And I should see "can not login"


