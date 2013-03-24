Feature: see detail of each user who reserve room 

  As an audiovisual education, faculty of Engineering, Thammasat university
  So that I see detail of each user who reserve room
  I want to see detail of each user who reserve room in database

Background: Startup with Homepage
  Given the following staff exist:
  | username     | password                           |
  | naidkub      | a128290498a21ed6a3fc8a2e4c011ebc   |

  Given the following reserves exist:
  | roomname | date_to_reserve | start_time | finish_time | tel        | email       | status        |
  | ENGR303  | 2013-03-13      | 16.30      | 18.00       | 0878908766 | hon@hon.com | nonconsidered |
  | ENGR304  | 2013-03-13      | 16.30      | 18.00       | 0878908766 | hon@hon.com | confirm       |

  Given the following forms exist:
  | position | name | surname | institution | tel | email | roomtype | roomname | date_to_reserve | start_time | finish_time | because | subject| amount_of_people | require_tool |
  | teacher | naidkub | honhon | superhon | 0878908766 | hon@hon.com | classroom | ENGR303 | 2013-03-13 | 16.30 | 18.00 | play game | hon | 20 | microphone,television |
  | teacher | naidkub | honhon | superhon | 0878908766 | hon@hon.com | classroom | ENGR304 | 2013-03-13 | 16.30 | 18.00 | play game | hon | 20 | microphone,television |

  And I am on the log in page
  When I login with "naidkub" and "honhon"
  Then I should be on the staff page
  When I follow "ข้อมูลการจองที่มีทั้งหมดในระบบ"
  Then I should be on the reserve detail page
  And I should see "พิจารณาการจองห้อง ENGR303"
  And I should see "ดูข้อมูลการจองห้อง ENGR304"

Scenario: can see all detail of user who reserve room that nonconsidered
  When I follow "พิจารณาการจองห้อง ENGR303"
  Then I should be on the reserve detail id:"1" page
  And I should see all of word '"ENGR303" "2013-03-13" "hon@hon.com" "classroom" "naidkub" "honhon" "รอการยืนยันจากเจ้าหน้าที่" "ยืนยันคำร้องขอการจองห้อง" "ปฏิเสธคำร้องขอการจองห้อง"'
 
Scenario: can see all detail of user who reserve room that confirm
  When I follow "ดูข้อมูลการจองห้อง ENGR304"
  Then I should be on the reserve detail id:"2" page
  And I should see all of word '"ENGR304" "2013-03-13" "hon@hon.com" "classroom" "naidkub" "honhon" "ได้รับการยืนยันแล้ว"'
  And I should not see "ยืนยันคำร้องขอการจองห้อง"
  And I should not see "ปฏิเสธคำร้องขอการจองห้อง"
 
