Feature: Adding new room

  As an audiovisual education, faculty of Engineering, Thammasat university
  So that I can add new room
  I want to add new room in my database

Background: Startup with Staffpage

  Given the following staff exist:
  | username     | password                           |
  | naidkub      | a128290498a21ed6a3fc8a2e4c011ebc   |

  Given the following detail_rooms exist:
  | roomname     | amount    | room_type  |
  | ENGR303      | 100       | classroom  | 

  Given the following rooms exist:
  | roomname     | day       | first | second | third | fourth | fifth | sixth | seventh | eighth |
  | ENGR303      | monday    | free  |  free  | busy  | free   | free  | busy  | free    |  free  |
  | ENGR303      | tuesday   | free  |  free  | busy  | free   | free  | busy  | free    |  free  |
  | ENGR303      | wednesday | free  |  free  | busy  | free   | busy  | busy  | free    |  free  |
  | ENGR303      | thursday  | free  |  free  | busy  | free   | free  | busy  | free    |  free  |
  | ENGR303      | friday    | busy  |  free  | busy  | free   | free  | busy  | free    |  free  |
  | ENGR303      | saturday  | free  |  free  | busy  | free   | free  | busy  | busy    |  free  |
  | ENGR303      | sunday    | free  |  free  | busy  | free   | free  | busy  | free    |  free  |
  

  And I am on the log in page
  When I login with "naidkub" and "honhon"
  Then I should be on the staff page
  When I follow "เพิ่มห้องใหม่"
  Then I should be on the new room page

Scenario: Add new room data that doesn’t exists in database to database
  When I fill in "droom[roomname]" with "ENGR301"
  And I fill in "droom[amount]" with "100"
  And I select "ห้องเรียน" from "droom[room_type]"
  And I check the following section: "8.00-9.30, 9.30-11.00, 11.00-12.30, 12.30-13.00, 13.30-15.00, 15.00-16.30, 16.30-18.00, 18.00-21.00" in "monday"
  And I check the following section: "8.00-9.30, 9.30-11.00, 11.00-12.30, 12.30-13.00, 13.30-15.00, 15.00-16.30, 16.30-18.00, 18.00-21.00" in "tuesday"
  And I check the following section: "8.00-9.30, 9.30-11.00, 11.00-12.30, 12.30-13.00, 13.30-15.00, 15.00-16.30, 16.30-18.00, 18.00-21.00" in "wednesday"
  And I check the following section: "8.00-9.30, 9.30-11.00, 11.00-12.30, 12.30-13.00, 13.30-15.00, 15.00-16.30, 16.30-18.00, 18.00-21.00" in "thursday"
  And I check the following section: "8.00-9.30, 9.30-11.00, 11.00-12.30, 12.30-13.00, 13.30-15.00, 15.00-16.30, 16.30-18.00, 18.00-21.00" in "friday"
  And I check the following section: "8.00-9.30, 9.30-11.00, 11.00-12.30, 12.30-13.00, 13.30-15.00, 15.00-16.30, 16.30-18.00, 18.00-21.00" in "saturday"
  And I check the following section: "8.00-9.30, 9.30-11.00, 11.00-12.30, 12.30-13.00, 13.30-15.00, 15.00-16.30, 16.30-18.00, 18.00-21.00" in "sunday"
  And I fill "1" in all of tools
  And I press "เพิ่มห้องใหม่"
  Then I should be on the staff page
  And I should see "add new room successess"
 
Scenario: Add room data that exists in database to database
  When I fill in "droom[roomname]" with "ENGR303"
  And I fill in "droom[amount]" with "100"
  And I select "ห้องเรียน" from "droom[room_type]"
  And I check the following section: "8.00-9.30, 9.30-11.00, 11.00-12.30, 12.30-13.00, 13.30-15.00, 15.00-16.30, 16.30-18.00, 18.00-21.00" in "monday"
  And I check the following section: "8.00-9.30, 9.30-11.00, 11.00-12.30, 12.30-13.00, 13.30-15.00, 15.00-16.30, 16.30-18.00, 18.00-21.00" in "tuesday"
  And I check the following section: "8.00-9.30, 9.30-11.00, 11.00-12.30, 12.30-13.00, 13.30-15.00, 15.00-16.30, 16.30-18.00, 18.00-21.00" in "wednesday"
  And I check the following section: "8.00-9.30, 9.30-11.00, 11.00-12.30, 12.30-13.00, 13.30-15.00, 15.00-16.30, 16.30-18.00, 18.00-21.00" in "thursday"
  And I check the following section: "8.00-9.30, 9.30-11.00, 12.30-13.00, 13.30-15.00, 15.00-16.30, 16.30-18.00, 18.00-21.00" in "friday"
  And I uncheck "thursday[11.00-12.30]"
  And I check the following section: "8.00-9.30, 9.30-11.00, 11.00-12.30, 12.30-13.00, 13.30-15.00, 15.00-16.30, 16.30-18.00, 18.00-21.00" in "saturday"
  And I check the following section: "8.00-9.30, 9.30-11.00, 11.00-12.30, 12.30-13.00, 13.30-15.00, 15.00-16.30, 16.30-18.00, 18.00-21.00" in "sunday"
  And I fill "1" in all of tools
  And I press "เพิ่มห้องใหม่"
  Then I should be on the staff page
  And I should see "can not add new droom"


