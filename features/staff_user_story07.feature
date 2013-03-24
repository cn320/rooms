Feature: see all detail of user who reserve room

  As an audiovisual education, faculty of Engineering, Thammasat university
  So that I see all detail of user who reserve room
  I want to see all detail of user who reserve room in database

Background: Startup with Homepage
  Given the following staff exist:
  | username     | password                           |
  | naidkub      | a128290498a21ed6a3fc8a2e4c011ebc   |

  Given the following reserves exist:
  | roomname | date_to_reserve | start_time | finish_time | tel        | email                    | status        |
  | ENGR303  | 2013-03-13      | 16.30      | 18.00       | 0878168055 | liberty_zero@hotmail.com | nonconsidered |
  | ENGR303  | 2013-03-14      | 9.30       | 11.00       | 0878168033 | digimon@hotmail.com      | confirm       |
  | ENGR303  | 2013-03-13      | 8.00       | 9.30        | 0878168044 | test@hotmail.com         | confirm       |
  | ENGR305  | 2013-03-15      | 8.00       | 9.30        | 0878168011 | self@hotmail.com         | confirm       |
  | ENGR306  | 2013-03-10      | 8.00       | 9.30        | 0878168034 | pokemon@hotmail.com      | nonconsidered |
  

  And I am on the log in page
  When I login with "naidkub" and "honhon"
  Then I should be on the staff page

Scenario: can see all detail of user who reserve room
  
  When I follow "ข้อมูลการจองที่มีทั้งหมดในระบบ"
  Then I should be on the reserve detail page
  And I should see "ENGR306" before "ENGR303" 
  And I should see "8.00" before "16.30"
  And I should see "พิจารณาการจองห้อง ENGR303"
  And I should see "พิจารณาการจองห้อง ENGR306"
  And I should see "ดูข้อมูลการจองห้อง ENGR303"
  And I should see "ดูข้อมูลการจองห้อง ENGR305"
  

